import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final num days = 30;
  final String name = "CodewithShivam";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "Catalog App",
          style: TextStyle(color: Colors.black),
        ),
      ),

//Body
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 3),
          ),
          child: Text("Welcome to $days days of flutter by $name"),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
