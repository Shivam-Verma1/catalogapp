import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const ({ Key? key }) : super(key: key);

  final num days = 30;
  final String name = "CodewithShivam";

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar:AppBar(
        title: const Text("Catalog App"),  
      )
        body: Center(
          child: Container(
            child: Text("Welcome to $days days of flutter by $name"),
          ),
        ),
      ),
  }
}