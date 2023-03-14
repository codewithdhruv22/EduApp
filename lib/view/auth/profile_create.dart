import 'package:edu/color.dart';
import 'package:edu/view/homeScreen.dart';
import 'package:edu/widgets/btn.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../../controller/userController.dart';

class ProfileCreate extends StatelessWidget {
  String phoneNumber;
  ProfileCreate({super.key, required this.phoneNumber});

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController pinCodeController = TextEditingController();
  TextEditingController referalCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    OtpFieldController otpController = OtpFieldController();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                      controller: nameController,
                      decoration: const InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        labelStyle: TextStyle(fontSize: 14),
                        labelText: 'Your Name',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white70)),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        labelStyle: TextStyle(fontSize: 14),
                        labelText: 'Your Email Address',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white70)),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: cityController,
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
                            controller: stateController,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 10),
                              labelStyle: TextStyle(fontSize: 14),
                              labelText: 'State',
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
                            controller: pinCodeController,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 10),
                              labelStyle: TextStyle(fontSize: 14),
                              labelText: 'Postal Code',
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
                      controller: referalCodeController,
                      decoration: const InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        labelStyle: TextStyle(fontSize: 14),
                        labelText: 'Referral Code',
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
                          UserController.createAccount(
                              name: nameController.text,
                              phoneNumber: phoneNumber,
                              email: emailController.text,
                              picUrl:
                                  "https://www.seekpng.com/png/detail/115-1150622_avatar-demo2x-man-avatar-icon-png.png",
                              buyCourseId: [],
                              city: cityController.text,
                              state: stateController.text,
                              postalCode: pinCodeController.text,
                              refferalCode: referalCodeController.text);
        
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => homeScreen()));
                        },
                        width: 115,
                        height: 15),
                  ],
                )),
          ]),
        ),
      ),
    );
  }
}
