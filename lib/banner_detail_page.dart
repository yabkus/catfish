import 'package:flutter/material.dart';

class BannerDetailPage extends StatefulWidget {
  final String username;
  final String emailaddress;
  const BannerDetailPage(
      {super.key, required this.username, required this.emailaddress});

  @override
  State<BannerDetailPage> createState() => _BannerDetailPageState();
}

class _BannerDetailPageState extends State<BannerDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Banner Detail Page"),
      ),
      body: Column(
        children: [
          Text("Welcome ${widget.username}"),
          Text("Your email is ${widget.emailaddress}")
        ],
      ),
    );
  }
}
