import 'package:flutter/material.dart';

class CourseDetail extends StatefulWidget {
  const CourseDetail({super.key});

  @override
  State<CourseDetail> createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(),
      body: Column(
        children: [
          Image.network("https://firebasestorage.googleapis.com/v0/b/eduapp-fdfb1.appspot.com/o/WhatsApp%20Image%202023-01-26%20at%209.54.56%20PM.jpeg?alt=media&token=9043ed4f-73aa-4f16-babb-588110346771", height: 220, width: MediaQuery.of(context).size.width,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("Flutter Complete Course", style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),),
              Text("Rs.499/-", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
              
            ],),
          )
        ],
      ),
    );
  }
}