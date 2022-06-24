import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changebutton = false;
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
              InkWell(
                onTap: () async {
                  setState(() {
                    changebutton = true;
                  });
                  await Future.delayed(const Duration(seconds: 1));
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: AnimatedContainer(
                  duration: const Duration(seconds: 2),
                  alignment: Alignment.center,
                  height: 50,
                  width: changebutton ? 50 : 150,
                  child: changebutton
                      ? const Icon(
                          Icons.done,
                          color: Colors.white,
                          size: 37,
                        )
                      : const Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    // shape: changebutton ? BoxShape.rectangle : BoxShape.circle,
                    borderRadius: BorderRadius.circular(changebutton ? 50 : 8),
                  ),
                ),
              )

// //Button
//               ElevatedButton(
//                 child: const Text('Login'),
//                 style: ElevatedButton.styleFrom(
//                     primary: Colors.green,
//                     minimumSize: const Size(150, 40),
//                     textStyle: const TextStyle(
//                       color: Colors.white,
//                     )),
//                 onPressed: () {
//                   Navigator.pushNamed(context, MyRoutes.homeRoute);
//               },
//                 ),
            ],
          ),
        ),
      ),
    );
  }
}
