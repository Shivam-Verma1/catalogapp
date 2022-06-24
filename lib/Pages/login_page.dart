import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
//1.image
              Image.asset(
                "assets/images/get1.png",
                fit: BoxFit.cover,
                height: 300,
              ),

//2.sizedbox
              //for spacing use Sizedbox
              const SizedBox(
                height: 24,
              ),
//3.text widget
              const Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
//3.sizedbox
              const SizedBox(
                height: 24,
              ),

              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
//username
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Username",
                        hintText: "Enter your username",
                      ),
                    ),
//password
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: "Password",
                        hintText: "Enter Password",
                      ),
                    )
                  ],
                ),
              ),
//Button
              ElevatedButton(
                child: const Text('Login'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    minimumSize: const Size(150, 40),
                    textStyle: const TextStyle(
                      color: Colors.white,
                    )),
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
