import 'package:blood_bank/recp_profile.dart';
import 'package:flutter/material.dart';

class recpforget extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<recpforget> {
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
                Text('FORGOT PASSWORD',
                    style: TextStyle(
                      color: Color.fromARGB(255, 195, 17, 4),
                      backgroundColor: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 10.0,
                ),
                Text('Login to continue as Recipient',
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
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Username'),
                ),
                SizedBox(
                  height: 40.0,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Phone Number'),
                ),
                SizedBox(
                  height: 50.0,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Enter OTP'),
                ),
                SizedBox(
                  height: 50.0,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter New Password'),
                ),
                SizedBox(
                  height: 50.0,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Re-enter Password'),
                ),
                SizedBox(
                  height: 50.0,
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
                      onPressed: () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (context) => recpprofile())),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
