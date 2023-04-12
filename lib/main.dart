import 'package:edu/color.dart';
import 'package:edu/controller/userController.dart';
import 'package:edu/global.dart';
import 'package:edu/view/auth/login.dart';
import 'package:edu/view/auth/otp_verify.dart';
import 'package:edu/view/auth/profile_create.dart';
import 'package:edu/view/courseDetail.dart';
import 'package:edu/view/custom_player.dart';
import 'package:edu/view/homeScreen.dart';
import 'package:edu/view/mainScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLoggedIn = false;

  readyCurrentUser() async {
    currentUserModel = await UserController.fetchUserModel();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("I AM FAUTH USER");
    print(fAuth.currentUser);
    if (fAuth.currentUser != null) {
      readyCurrentUser();
      setState(() {
        isLoggedIn = true;
      });
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: primaryColor));
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),
      home: isLoggedIn ? CustomPlayer() : LoginScreen(),
    );
  }
}
