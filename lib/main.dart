import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'Pages/login_page.dart';
import 'Pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // THEMES
      themeMode: ThemeMode.light, //select thememode
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), //gives properties of light thememode
      darkTheme: ThemeData(
          brightness: Brightness.dark), //gives properties of dark thememode
//home
      debugShowCheckedModeBanner: false, //to remove debug banner

//Routes
      initialRoute: "/login",
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
       MyRoutes.loginRoute: (context) => const LoginPage()
      },
    );
  }
}
