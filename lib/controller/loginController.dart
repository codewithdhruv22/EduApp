import 'package:edu/controller/userController.dart';
import 'package:edu/view/auth/otp_verify.dart';
import 'package:edu/view/auth/profile_create.dart';
import 'package:edu/view/homeScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../global.dart';
import '../main.dart';

class LoginController {
  static void verifyPhoneNumber(String phoneNum, BuildContext context) async {
    await fAuth.verifyPhoneNumber(
        phoneNumber: phoneNum,
        verificationCompleted: (phoneAuthCredential) async {},
        verificationFailed: (verificationFailed) {
          print(verificationFailed);
        },
        codeSent: (verificationIDs, resendingToken) async {
          verificationID = verificationIDs;
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => OtpVerify(
                        phoneNumber: phoneNum,
                      )));
        },
        codeAutoRetrievalTimeout: (verificationID) async {});
  }

  static Future<void> signInWithPhoneAuthCred(
      AuthCredential phoneAuthCredential,
      BuildContext context,
      String phoneNumber) async {
    try {
      final authCred = await fAuth.signInWithCredential(phoneAuthCredential);
      if (authCred.user != null) {
        //LOGIN SUCCESS

      

        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProfileCreate(phoneNumber: phoneNumber,)));
      }
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      print(e.message);
      Fluttertoast.showToast(msg: "Some Error Occured! - ${e.message}");
    }
  }

  static void singOutFromApp(BuildContext context) async {
    await fAuth.signOut();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MyApp()));
  }
}
