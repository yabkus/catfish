import 'package:flutter/material.dart';

class Anababa extends StatefulWidget {
  const Anababa({super.key});

  @override
  State<Anababa> createState() => _AnababaState();
}

class _AnababaState extends State<Anababa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Anababa"),
      ),
      body: const Center(
        child: Text("Anababa"),
      ),
    );
  }
}
