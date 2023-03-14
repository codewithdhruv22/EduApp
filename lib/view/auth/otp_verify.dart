import 'package:edu/color.dart';
import 'package:edu/controller/loginController.dart';
import 'package:edu/widgets/btn.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import '../../global.dart';
import '../widgets/progress_dialog.dart';

class OtpVerify extends StatelessWidget {
  OtpVerify({super.key, required this.phoneNumber});
  String phoneNumber;
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
                                Iconsax.password_check,
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
                                "Verify OTP",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                "We have sent you otp on your phone number",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 11),
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
                    OTPTextField(
                        controller: otpController,
                        length: 6,
                        width: MediaQuery.of(context).size.width,
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        fieldWidth: 45,
                        fieldStyle: FieldStyle.underline,
                        outlineBorderRadius: 15,
                        style: TextStyle(fontSize: 17),
                        onChanged: (pin) {
                          print("Changed: " + pin);
                        },
                        onCompleted: (pin) {
                          print("Completed: " + pin);
                          showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext c) {
                                return ProgressDialog(
                                  message: "Verifying OTP....",
                                );
                              });
                          AuthCredential phoneAuthCredential =
                              PhoneAuthProvider.credential(
                                  verificationId: verificationID, smsCode: pin);
                          LoginController.signInWithPhoneAuthCred(
                              phoneAuthCredential, context, phoneNumber);
                        }),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Resend OTP in 22 sec Via',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color.fromARGB(255, 155, 155, 155)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    btn(
                        title: "Verify",
                        operation: () {
                          print("HELLO");
                        },
                        width: 140,
                        height: 15),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton.icon(
                              onPressed: null,
                              style: ButtonStyle(),
                              icon: Icon(Iconsax.messages),
                              label: Text('SMS')),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: OutlinedButton.icon(
                              onPressed: null,
                              icon: Icon(Iconsax.messages_2),
                              label: Text('Whatsapp')),
                        ),
                      ],
                    )
                  ],
                )),
          ]),
        ),
      ),
    );
  }
}