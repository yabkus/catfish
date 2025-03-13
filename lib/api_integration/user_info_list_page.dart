import 'package:catfish/api_integration/user_info_page.dart';
import 'package:flutter/material.dart';
import 'package:catfish/api_integration/dio_client.dart';

class UserInfoListPage extends StatefulWidget {
  const UserInfoListPage({super.key});

  @override
  State<UserInfoListPage> createState() => _UserInfoListPageState();
}

class _UserInfoListPageState extends State<UserInfoListPage> {
  final DioClient dioClient = DioClient();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("UserInfoListPage"),
      ),
      body: Center(
          child: FutureBuilder(
              future: dioClient.getUserList(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text("Error: ${snapshot.error}"));
                } else if (snapshot.hasData) {
                  final users = snapshot.data;
                  return ListView.builder(
                      itemCount: users?.data?.length,
                      itemBuilder: (context, index) {
                        final user = users?.data?[index];
                        return ListTile(
                          title: Text("${user?.firstName} ${user?.lastName}"),
                          subtitle: Text("${user?.email}"),
                          leading: Image.network("${user?.avatar}"),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        UserInfoPage(user: user!)));
                          },
                        );
                      });
                } else {
                  return const Text("No data");
                }
              })),
    );
  }
}
