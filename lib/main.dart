import 'dart:html';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catlog converter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(title: 'Welcome to Catalog Converter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<MyHomePage> createState() => HomePage();
}

class HomePage extends State<MyHomePage> {
  int counter = 0;
  void increment() {
    setState(() {
      counter++;
    });
  }
  @override
  Widget build (BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title:Text(widget.title),
      ),
    )
  }
}
