import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
        child: Column(
          children: [
//1.image
            Image.asset(
              "assets/images/login_image.png",
              package: 'flutter_catalog',
              fit: BoxFit.cover,
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
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
//3.sizedbox
            const SizedBox(
              height: 24,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
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
                  textStyle: const TextStyle(
                    color: Colors.white,
                  )),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
