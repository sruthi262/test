import 'dart:math';

import 'package:blood_bank/auth.dart';
import 'package:blood_bank/instr.dart';
import 'package:flutter/material.dart';
import 'package:blood_bank/donor_signin.dart';
import 'package:blood_bank/donor_home.dart';

class donorsignup extends StatefulWidget {
  donorsignup({Key? key}) : super(key: key);

  @override
  State<donorsignup> createState() => _donorsignupState();
}

class _donorsignupState extends State<donorsignup> {
  final _auth = AuthService();

  final TextEditingController nameController = TextEditingController();

  final TextEditingController ageController = TextEditingController();

  final TextEditingController bloodGroupController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();

  final TextEditingController locationController = TextEditingController();

  final TextEditingController weightController = TextEditingController();

  final TextEditingController infectionsController = TextEditingController();

  final TextEditingController chronicIllnessController =
      TextEditingController();

  final TextEditingController cancerController = TextEditingController();

  final TextEditingController bloodDisorderController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPasswordController =
      TextEditingController();

  void dispose() {
    super.dispose();
    nameController.dispose();
    ageController.dispose();
    emailController.dispose();
    phoneController.dispose();
    locationController.dispose();
    weightController.dispose();
    infectionsController.dispose();
    chronicIllnessController.dispose();
    cancerController.dispose();
    bloodDisorderController.dispose();
    passwordController.dispose();
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
                Text('SIGN UP',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 236, 19, 4),
                      backgroundColor: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 10.0,
                ),
                Text('Sign up as donor',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      backgroundColor: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Name'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: ageController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Age'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: bloodGroupController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Blood Group'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Email'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: phoneController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Phone'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: locationController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Location'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: weightController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Weight'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: infectionsController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Infections'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: chronicIllnessController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Chronic illness(Heart diseases,Diabetics)'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: cancerController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Cancer'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: bloodDisorderController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Blood Disorder'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                // Add similar TextField widgets for other fields

                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Password'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: confirmPasswordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Confirm Password'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: TextButton(
                      child: Text(
                        'Instructions',
                        style: TextStyle(
                          color: Color.fromARGB(255, 205, 7, 7),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationColor:
                              const Color.fromARGB(255, 198, 25, 12),
                        ),
                      ),
                      onPressed: () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => instruct()))),
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
                      onPressed: _signup,
                      child: Text(
                        'Sign In',
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
                    'Already have an account?',
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
                        'Log in',
                        style: TextStyle(
                          color: Color.fromARGB(255, 205, 7, 7),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Signin()))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /*goToHome(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const donorhome()),
      );*/

  _signup() async {
    final user = await _auth.createUserWithEmailAndPassword(
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
