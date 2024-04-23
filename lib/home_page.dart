import 'package:blood_bank/donor_signin.dart';

import 'package:blood_bank/recp_sigin.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'LIFEDROP',
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              width: 300,
              height: 300,
              child: Image.asset('assets/giving-blood-donating-blood.png'),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'HELLO!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.red, // Set text color to red
                  fontSize: 30, // Set font size
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Welcome To Lifedrop Blood Donation App',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.red, // Set text color to red
                  fontSize: 20, // Set font size
                ),
              ),
            ),
            SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => RecpSignIn()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  ),
                  child: Text(
                    'RECIPIENT',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Signin()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  ),
                  child: Text(
                    'DONOR',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
