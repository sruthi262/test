import 'package:blood_bank/donor_confirm.dart';
import 'package:blood_bank/donor_home.dart';
import 'package:blood_bank/instr.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:blood_bank/donor_signup.dart';
import 'package:blood_bank/home_page.dart';
import 'package:blood_bank/donor_signin.dart';
import 'package:blood_bank/donor_profile.dart';
import 'package:blood_bank/donor_req_page.dart';
import 'package:blood_bank/recp_signup.dart';
import 'package:blood_bank/recp_sigin.dart';
import 'package:blood_bank/view_request.dart';
import 'package:blood_bank/recp_profile.dart';
import 'package:blood_bank/recp_forgot.dart';
import 'package:blood_bank/donor_forgot.dart';

void main() {
  runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'Homepage',
      routes: {
        'Homepage': (BuildContext) => HomeScreen(),
        'donor_signup': (BuildContext) => donorsignup(),
        'donor_signin': (BuildContext) => Signin(),
        'donor_home': (BuildContext) => donorhome(),
        'donor_profile': (BuildContext) => Donorprofile(),
        'donor_req_page': (BuildContext) => requestpage(),
        'recp_signup': (BuildContext) => Signuprecp(),
        'recp_signin': (BuildContext) => RecpSignIn(),
        'view_request': (BuildContext) => viewrequest(),
        'recp_profile': (BuildContext) => recpprofile(),
        'recp_forgot': (BuildContext) => recpforget(),
        'donor_forgot': (BuildContext) => donorforget(),
        'instruction': (BuildContext) => instruct(),
        'donorconfirm': (BuildContext) => donorconfirm(),
      }));
}
