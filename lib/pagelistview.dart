import 'package:catfish/banner_detail_page.dart';
import 'package:flutter/material.dart';

class Pagelistview extends StatefulWidget {
  const Pagelistview({super.key});

  @override
  State<Pagelistview> createState() => _PagelistviewState();
}

class _PagelistviewState extends State<Pagelistview> {
  final usernameController = TextEditingController();
  final EmailAddress = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Pagelistview"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Enter your username',
                hintText: "Username",
              ),
              controller: usernameController,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Enter your Email',
                hintText: "Email Address",
              ),
              controller: EmailAddress,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BannerDetailPage(
                            username: usernameController.text,
                            emailaddress: EmailAddress.text,
                          )));
            },
            child: const Text('Go to Art of War'),
          ),
        ],
      ),
    );
  }
}
