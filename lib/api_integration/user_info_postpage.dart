import 'package:catfish/api_integration/dio_client.dart';
import 'package:catfish/api_integration/user_info_body.dart';
import 'package:flutter/material.dart';

class UserInfoPastPage extends StatefulWidget {
  const UserInfoPastPage({super.key});

  @override
  State<UserInfoPastPage> createState() => _UserInfoPastPageState();
}

class _UserInfoPastPageState extends State<UserInfoPastPage> {
  final nameController = TextEditingController();
  final jobController = TextEditingController();
  final dioClient = DioClient();
  bool isLoading = false;

  Future<void> submitData(String name, String job) async {
    setState(() {
      isLoading = true;
    });
    final response =
        await dioClient.createUser(UserInfoBody(name: name, job: job));

    var snackBar = SnackBar(
        content: Text(
            'Name: ${response?.name}, Job: ${response?.job}, CreatedAt: ${response?.createdAt}'));

// Find the ScaffoldMessenger in the widget tree
// and use it to show a SnackBar.
    ScaffoldMessenger.of(context).showSnackBar(snackBar);

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("UserInfoPastPage"),
        ),
        body: Column(
          children: [
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Enter Name',
              ),
            ),
            const SizedBox(height: 15),
            TextFormField(
              controller: jobController,
              decoration: const InputDecoration(
                labelText: 'Enter Job',
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
                onPressed: () {
                  submitData(nameController.text, jobController.text);
                },
                child: Text(isLoading == true ? "Loading..." : 'Submit')),
            ElevatedButton(
                onPressed: () async {
                  await dioClient.getUserList();
                },
                child: const Text('Submit'))
          ],
        ));
  }
}
