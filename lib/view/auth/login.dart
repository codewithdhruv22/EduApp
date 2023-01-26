import 'package:edu/color.dart';
import 'package:edu/widgets/btn.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              operation: () {
                print("HELLO");
              },
              width: 140,
              height: 15)
        ]),
      ),
    );
  }
}
