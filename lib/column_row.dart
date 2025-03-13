import 'package:flutter/material.dart';

class ColumnRow extends StatefulWidget {
  const ColumnRow({super.key});

  @override
  State<ColumnRow> createState() => _ColumnRowState();
}

class _ColumnRowState extends State<ColumnRow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Column and Row"),
        ),
        body: const Center(
          child: Text("Column and Row"),
        ));
  }
}
