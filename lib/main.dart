import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'Pages/login_page.dart';
import 'Pages/home_page.dart';
import 'package:flutter_catalog/widgets/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

 // THEMES
      themeMode: ThemeMode.light,      //select thememode
      theme: MyTheme.lightTheme(context),      //gives properties of light thememode
      darkTheme: MyTheme.darkTheme(context),    


//home

      debugShowCheckedModeBanner: false, //to remove debug banner

//Routes
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => const HomePage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage()
      },
    );
  }
}
