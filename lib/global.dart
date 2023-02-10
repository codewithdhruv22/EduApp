import 'package:edu/model/usermodel.dart';
import 'package:edu/view/homeScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

List<Widget> buildScreens() {
  return [
    homeScreen(),
    Center(
      child: Text("Store"),
    )
  ];
}

final FirebaseAuth fAuth = FirebaseAuth.instance;

String verificationID = "";
User? currentFirebaseUser;
UserModel? currentUserModel;
