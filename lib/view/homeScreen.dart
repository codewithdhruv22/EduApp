import 'package:cached_network_image/cached_network_image.dart';
import 'package:edu/color.dart';
import 'package:edu/controller/loginController.dart';
import 'package:edu/global.dart';
import 'package:edu/view/courseDetail.dart';
import 'package:edu/view/widgets/progress_dialog.dart';
import 'package:edu/widgets/btn.dart';
import 'package:edu/widgets/category_sec.dart';
import 'package:edu/widgets/course_card.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class homeScreen extends StatelessWidget {
  homeScreen({super.key});

  bool _enabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                // Close button Row
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Iconsax.close_square,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                // profile card Container
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 41, 41, 41)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Icon(
                          Iconsax.profile_circle,
                          size: 50,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              // currentUserModel!.name!,
                              "NAME",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Student',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                // Category
                SizedBox(
                  height: 15,
                ),
                Row(children: [
                  Text(
                    'Basic',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 48, 48, 48)),
                  )
                ]),
                ListTile(
                  leading: Icon(
                    Iconsax.setting_24,
                  ),
                  title: Text('Setting'),
                  trailing: Icon(Iconsax.arrow_right_3),
                  horizontalTitleGap: 1,
                ),
                ListTile(
                  leading: Icon(
                    Iconsax.security_safe,
                  ),
                  title: Text('Privacy Policy'),
                  trailing: Icon(Iconsax.arrow_right_3),
                  horizontalTitleGap: 1,
                ),
                ListTile(
                  onTap: () {
                    print('how to use the app');
                  },
                  leading: Icon(
                    Iconsax.information,
                  ),
                  title: Text('How to use the App'),
                  trailing: Icon(Iconsax.arrow_right_3),
                  horizontalTitleGap: 1,
                ),

                ListTile(
                  onTap: () {
                    LoginController.singOutFromApp(context);
                  },
                  leading: Icon(
                    Iconsax.logout,
                  ),
                  title: Text('Sign Out'),
                  trailing: Icon(Iconsax.arrow_right_3),
                  horizontalTitleGap: 1,
                ),
              ],
            ),
          )),
        ),
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Text('Code With Dhruv'),
          actions: [
            IconButton(
              iconSize: 30,
              icon: Icon(Iconsax.notification),
              onPressed: () {
                showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext c) {
                      return ProgressDialog(
                        message: "Sending OTP....",
                      );
                    });
              },
            ),
            SizedBox(
              width: 15,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: CachedNetworkImage(
                  imageUrl:
                      "https://firebasestorage.googleapis.com/v0/b/eduapp-fdfb1.appspot.com/o/WhatsApp%20Image%202023-01-26%20at%209.54.57%20PM.jpeg?alt=media&token=5447afc7-951a-4518-9915-a7d405e65724",
                  placeholder: (context, url) => Container(
                      height: 170,
                      child: Center(child: CircularProgressIndicator())),
                  errorWidget: (context, url, error) => new Icon(Icons.error),
                ),

                // FadeInImage(image: NetworkImage(""),
                // placeholder: AssetImage(),
                // ) ,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Learn Something New Today!',
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 40, 50, 70)),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    SizedBox(
                      height: 90,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Category_Sec("Django", index);
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              width: 10,
                            );
                          },
                          itemCount: 10),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'Continue Learning',
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 40, 50, 70)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      // height: 100,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 238, 238, 238),
                                spreadRadius: 1,
                                blurRadius: 5),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                          padding: EdgeInsets.all(1),
                          child: Row(
                            children: [
                              CachedNetworkImage(
                                width: 150,
                                fit: BoxFit.cover,
                                imageUrl:
                                    "https://firebasestorage.googleapis.com/v0/b/eduapp-fdfb1.appspot.com/o/WhatsApp%20Image%202023-01-26%20at%209.54.56%20PM.jpeg?alt=media&token=9043ed4f-73aa-4f16-babb-588110346771",
                                placeholder: (context, url) => Container(
                                    height: 70,
                                    child: Center(
                                        child: CircularProgressIndicator())),
                                errorWidget: (context, url, error) =>
                                    new Icon(Icons.error),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Python Complete Course',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
                                    ),
                                    Text(
                                      '2/20 video watched',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          color: primaryColor),
                                    ),
                                    Text(
                                      '21 days to expire.',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          color: primaryColor),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'New out there',
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 40, 50, 70)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 301,
                      child: ListView.separated(
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              width: 10,
                            );
                          },
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return CourseCard(
                                imgUrl:
                                    "https://firebasestorage.googleapis.com/v0/b/eduapp-fdfb1.appspot.com/o/WhatsApp%20Image%202023-01-26%20at%209.54.57%20PM%20(1).jpeg?alt=media&token=dc93ea93-1f09-4f1f-a86b-2f07a1924642",
                                title: "Python Complete Course",
                                duration: "2h 33m",
                                rating: 2,
                                redirectionFunc: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => CourseDetail()));
                                });
                          }),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
