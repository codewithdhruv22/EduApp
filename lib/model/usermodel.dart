import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class UserModel {
  String? name;
  String? phoneNumber;
  String? picUrl;
  String? email;
  String? city;
  String? state;
  String? postalCode;
  String? refferalCodeApplied;
  List<String>? buyCourseId;

  UserModel(
      {this.name,
      this.phoneNumber,
      this.picUrl,
      this.buyCourseId,
      this.city,
      this.email,
      this.postalCode,
      this.refferalCodeApplied,
      this.state});

  static Map<String, dynamic> userModelFromAppToFb(UserModel user) {
    return {
      "name": user.name,
      "phoneNumber": user.phoneNumber,
      "picUrl": user.picUrl,
      "buyCourseId": user.buyCourseId,
      "city": user.city,
      "email": user.email,
      "postalCode": user.postalCode,
      "refferalCodeApplied": user.refferalCodeApplied,
      "state": user.state
    };
  }

  static UserModel userModelFromFbToApp(DataSnapshot snap) {
    return UserModel(

name : (snap.value as dynamic)["name"],
    phoneNumber : (snap.value as dynamic)["phoneNumber"],
    picUrl : (snap.value as dynamic)["picUrl"],
    buyCourseId : (snap.value as dynamic)["buyCourseId"],
    city : (snap.value as dynamic)["city"],
    email : (snap.value as dynamic)["email"],
    postalCode : (snap.value as dynamic)["postalCode"],
    refferalCodeApplied : (snap.value as dynamic)["refferalCodeApplied"],
    state : (snap.value as dynamic)["state"],
    );
    
  }
}
