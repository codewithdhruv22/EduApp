import 'package:edu/global.dart';
import 'package:edu/model/usermodel.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class UserController {
  static void createAccount(
      {required String name,
      required String phoneNumber,
      required String picUrl,
      required List<String> buyCourseId,
      required String city,
      required String email,
      required String postalCode,
      required String refferalCode,
      required String state}) async {
    await FirebaseDatabase.instance
        .ref()
        .child("users")
        .child(fAuth.currentUser!.phoneNumber!)
        .set(UserModel.userModelFromAppToFb(UserModel(
          name: name,
          phoneNumber: phoneNumber,
          picUrl: picUrl,
          buyCourseId: buyCourseId,
          city: city,
          email: email,
          postalCode: postalCode,
          refferalCodeApplied: refferalCode,
          state: state,
        )));
  }

  static Future<UserModel?> fetchUserModel() async {
    UserModel? userModel;
    print("I AM FetchUserModel");
    print(fAuth.currentUser!.phoneNumber!);
    await FirebaseDatabase.instance
        .ref()
        .child("users")
        .child(fAuth.currentUser!.phoneNumber!)
        .get()
        .then((userSnap) {
      print("I AM USER SNAP");
      print(userSnap);
      userModel = UserModel.userModelFromFbToApp(userSnap);
    });

    return userModel;
  }
}
