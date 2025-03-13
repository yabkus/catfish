import 'package:catfish/api_integration/dio_client.dart';
import 'package:catfish/api_integration/result_to_data.dart';
import 'package:catfish/api_integration/user_info_body.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class UserInfoPage extends StatefulWidget {
  final Data user;
  const UserInfoPage({super.key, required this.user});

  @override
  State<UserInfoPage> createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {
  final DioClient dioClient = DioClient();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("UserInfoPage"),
        ),
        body: Center(
            child: FutureBuilder(
                future: dioClient.getUser(widget.user.id.toString()),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text("Error: ${snapshot.error}"));
                  } else if (snapshot.hasData) {
                    final user = snapshot.data;
                    return Column(
                      children: [
                        Image.network("${user?.data?.avatar}"),
                        const SizedBox(height: 10),
                        Text("${user?.data?.firstName} "
                            "${user?.data?.lastName}"),
                        const SizedBox(height: 10),
                        Text("${user?.data?.email}"),
                        const SizedBox(height: 10),
                        ElevatedButton(
                            onPressed: () {
                              dioClient.updateUser(
                                  widget.user.id ?? 0,
                                  const UserInfoBody(
                                      name: 'morpheus', job: 'leader'));
                            },
                            child: const Text('Click here'))
                      ],
                    );
                  } else {
                    return const Text("No data");
                  }
                }))

        // body: Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       ElevatedButton(
        //         onPressed: () {
        //           dioClient.getUser("3");
        //         },
        //         child: const Text('User Info Page'),
        //       ),
        //     ],
        //   ),
        //  ),
        );
  }
}
