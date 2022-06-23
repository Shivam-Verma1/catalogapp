import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final num days = 30;
  final String name = "CodewithShivam";

  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 3),
          ),
          child: Text("Welcome to $days days of flutter by $name"),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
