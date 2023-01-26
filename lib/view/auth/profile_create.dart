import 'package:edu/color.dart';
import 'package:edu/widgets/btn.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class ProfileCreate extends StatelessWidget {
  const ProfileCreate({super.key});

  @override
  Widget build(BuildContext context) {
    OtpFieldController otpController = OtpFieldController();
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            color: primaryColor,
            // decoration: BoxDecoration(color: primaryColor),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton.icon(
                        onPressed: () {
                          // Respond to button press
                        },
                        icon: const Icon(
                          Iconsax.arrow_left,
                          size: 18,
                          color: Colors.white,
                        ),
                        label: Text(
                          "Back",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {
                          // Respond to button press
                        },
                        icon: const Icon(
                          Iconsax.message_question,
                          size: 18,
                          color: Colors.white,
                        ),
                        label: Text(
                          "help",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ]),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white24),
                            child: Icon(
                              Iconsax.personalcard,
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
                              "Create Your Profile",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "Let Us Know a little bit about you.",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )
                      ]),
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      labelStyle: TextStyle(fontSize: 14),
                      labelText: 'First Name',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white70)),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      labelStyle: TextStyle(fontSize: 14),
                      labelText: 'Last Name',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white70)),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      labelStyle: TextStyle(fontSize: 14),
                      labelText: 'City',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white70)),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 10),
                            labelStyle: TextStyle(fontSize: 14),
                            labelText: 'Last Name',
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white70)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 10),
                            labelStyle: TextStyle(fontSize: 14),
                            labelText: 'Last Name',
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white70)),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      labelStyle: TextStyle(fontSize: 14),
                      labelText: 'Email',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white70)),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  btn(
                      title: "Create Profile",
                      operation: () {
                        print("HELLO");
                      },
                      width: 115,
                      height: 15),
                ],
              )),
        ]),
      ),
    );
  }
}
