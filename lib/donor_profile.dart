import 'package:blood_bank/donor_home.dart';
import 'package:flutter/material.dart';

class Donorprofile extends StatefulWidget {
  Donorprofile({Key? key}) : super(key: key);

  @override
  _DonorprofileState createState() => _DonorprofileState();
}

class _DonorprofileState extends State<Donorprofile> {
  bool? isChecked = false;

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
                Text(
                  'User Id',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 236, 19, 4),
                    backgroundColor: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Row(
                  children: <Widget>[
                    Text(
                      '8735690709 ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        backgroundColor: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(right: 70.0)),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        'A+',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          backgroundColor: Color.fromARGB(255, 220, 8, 8),
                          fontSize: 30,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 3.0,
                    width: 800.0,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Are you available? ',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          backgroundColor: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      // Wrap Checkbox with Container
                      padding: EdgeInsets.only(
                          bottom:
                              4.0), // Adjust padding to vertically center Checkbox
                      child: Checkbox(
                        value: isChecked,
                        activeColor: const Color.fromARGB(255, 210, 22, 9),
                        onChanged: (newBool) {
                          setState(() {
                            isChecked = newBool;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 3.0,
                    width: 800.0,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                const Row(
                  children: <Widget>[
                    Text(
                      'Last Blood Donation Date ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        backgroundColor: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Date',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
                    hintStyle: TextStyle(fontSize: 12.0),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 3.0,
                    width: 800.0,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(children: [
                  Text('Date of Birth',
                      style: TextStyle(
                        color: Colors.black,
                        backgroundColor: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '25-03-2000'),
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 20.0,
                ),
                Row(children: [
                  Text('Email',
                      style: TextStyle(
                        color: Colors.black,
                        backgroundColor: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    width: 80.5,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'abc@gmail.com'),
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 20.0,
                ),
                Row(children: [
                  Text('Phone',
                      style: TextStyle(
                        color: Colors.black,
                        backgroundColor: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    width: 70,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '5537284768'),
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 20.0,
                ),
                Row(children: [
                  Text('Location',
                      style: TextStyle(
                        color: Colors.black,
                        backgroundColor: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    width: 50,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Kozhikode'),
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 20.0,
                ),
                Row(children: [
                  Text('Weight',
                      style: TextStyle(
                        color: Colors.black,
                        backgroundColor: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    width: 70.5,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), hintText: '55'),
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 20.0,
                ),
                Row(children: [
                  Text(' Infections',
                      style: TextStyle(
                        color: Colors.black,
                        backgroundColor: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    width: 40.5,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), hintText: ''),
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                       const Text(
                          'Chronic Illness  ',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            backgroundColor: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          // Wrap Checkbox with Expanded
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Checkbox(
                              value: isChecked,
                              activeColor:
                                  const Color.fromARGB(255, 210, 22, 9),
                              onChanged: (newBool) {
                                setState(() {
                                  isChecked = newBool;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Cancer  ',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            backgroundColor: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          // Wrap Checkbox with Expanded
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Checkbox(
                              value: isChecked,
                              activeColor:
                                  const Color.fromARGB(255, 210, 22, 9),
                              onChanged: (newBool) {
                                setState(() {
                                  isChecked = newBool;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'Blood Disorder ',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                              backgroundColor: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Checkbox(
                          value: isChecked,
                          activeColor: const Color.fromARGB(255, 210, 22, 9),
                          onChanged: (newBool) {
                            setState(() {
                              isChecked = newBool;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 0, // Removes the elevation
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.red), // Border color
                            borderRadius: BorderRadius.circular(
                                8), // Adjust border radius as needed
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Edit',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 0, // Removes the elevation
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.red), // Border color
                            borderRadius: BorderRadius.circular(
                                8), // Adjust border radius as needed
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Delete Account',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 3.0,
                    width: 800.0,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: SizedBox(
                    width: 900, // Increase the width
                    height: 50, // Increase the height
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 179, 15, 3),
                      ),
                      onPressed: () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => donorhome())),
                      child: Text(
                        'Done',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20, // Increase the font size
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
