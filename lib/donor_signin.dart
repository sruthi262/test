import 'package:blood_bank/auth.dart';
import 'package:blood_bank/donor_forgot.dart';
import 'package:blood_bank/donor_home.dart';
import 'package:blood_bank/donor_signup.dart';

import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final _auth = AuthService();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  get nameController => null;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            alignment: Alignment.topLeft,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('SIGN IN',
                    style: TextStyle(
                      color: Color.fromARGB(255, 195, 17, 4),
                      backgroundColor: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 10.0,
                ),
                Text('Sign in here to continue as Donor',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      backgroundColor: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 40.0,
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Email'),
                ),
                SizedBox(
                  height: 40.0,
                ),
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Password'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return donorforget();
                            },
                          ),
                        );
                      },
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ]),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: SizedBox(
                    width: 800, // Set width
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 179, 15, 3),
                        // Set the button's background color
                      ),
                      onPressed: _login,
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: Text(
                    ' Dont have an account?',
                    style: TextStyle(
                      color: Color.fromARGB(255, 149, 125, 122),
                      backgroundColor: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Center(
                  child: TextButton(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Color.fromARGB(255, 205, 7, 7),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () => Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => donorsignup())),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _login() async {
    final user = await _auth.loginUserWithEmailAndPassword(
        emailController.text, passwordController.text);

    if (user != null) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const donorhome()),
      );
    } else {
      print("cannot accept");
    }
  }
}
