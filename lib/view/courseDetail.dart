import 'package:edu/widgets/btn.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CourseDetail extends StatefulWidget {
  String courseID;
  CourseDetail({super.key, required this.courseID});

  @override
  State<CourseDetail> createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("Details"),),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/eduapp-fdfb1.appspot.com/o/WhatsApp%20Image%202023-01-26%20at%209.54.56%20PM.jpeg?alt=media&token=9043ed4f-73aa-4f16-babb-588110346771"),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 20),
            child: Row(
              children: [
                Column(
                  children: [
                    Text("Flutter Complete Course"),
                    Row(
                      children: [
                        Icon(
                          Iconsax.star1,
                          size: 18,
                          color: Colors.amber,
                        ),
                        Icon(
                          Iconsax.star1,
                          size: 18,
                          color: Colors.amber,
                        ),
                        Icon(
                          Iconsax.star1,
                          size: 18,
                          color: Colors.amber,
                        ),
                        Icon(
                          Iconsax.star1,
                          size: 18,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          width: 2.5,
                        ),
                        Icon(
                          Iconsax.star,
                          size: 14,
                          color: Colors.amber,
                        )
                      ],
                    ),
                  ],
                ),
                Text("Rs.499/-")
              ],
            ),
          ),
          Divider(),
          btn(title: "Rate", operation: () {}, width: 100, height: 30)
        ],
      )),
    );
  }
}
