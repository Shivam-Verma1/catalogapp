import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;
  final _formkey = GlobalKey<FormState>();

  movetohome(BuildContext context) async {
    if (!(_formkey.currentState!.validate())) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: <Widget>[
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
                Text(
                  "Welcome $name",
                  style: const TextStyle(
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
                          onChanged: (value) {
                            setState(() {
                              name = value;
                            });
                          },
                          validator: (String? value) {
                            value = '';
                            if (value.isEmpty) {
                              return "Username can't be empty";
                            }
                            return null;
                          }),

                      //password
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: "Password",
                          hintText: "Enter Password",
                        ),
                        validator: (String? value) {
                          value = '';
                          if (value.isEmpty) {
                            return "Password cannot be empty";
                          }
                          // else if (value.length<6) {
                          //   return "Password must contain atleast 6 characters";
                          // }
                          return null;
                        },
                      )
                    ],
                  ),
                ),
                //Button
                Material(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(changebutton ? 50 : 8),
                  child: InkWell(
                    onTap: () => movetohome(context),
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
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
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// Another method of Button(but here no animation)
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