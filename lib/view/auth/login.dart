import 'package:edu/color.dart';
import 'package:edu/controller/loginController.dart';
import 'package:edu/view/auth/otp_verify.dart';
import 'package:edu/widgets/btn.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../widgets/progress_dialog.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 80,
            color: primaryColor,
            // decoration: BoxDecoration(color: primaryColor),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white24),
                  child: Icon(
                    Iconsax.login_1,
                    size: 30,
                    color: Colors.white,
                  )),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Text(
                    "Enter Your 10-Digit Mobile Number",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              )
            ]),
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: TextFormField(
                controller: phoneController,
                textInputAction: TextInputAction.send,
                keyboardType: TextInputType.number,
                autofocus: true,
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                  labelStyle: TextStyle(fontSize: 14),
                  labelText: 'Mobile Number',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70)),
                ),
                onChanged: (value) {},
              )),
          btn(
              title: "Send OTP",
              operation: () async {
                showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext c) {
                      return ProgressDialog(
                        message: "Sending OTP....",
                      );
                    });
                LoginController.verifyPhoneNumber(
                    "+91${phoneController.text.trim()}", context);
                Navigator.pop(context);
                print("HELLO");
              },
              width: 140,
              height: 15)
        ]),
      ),
    );
  }
}
