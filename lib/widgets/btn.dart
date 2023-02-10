import 'package:edu/color.dart';
import 'package:flutter/material.dart';

Widget btn(
    {required String title,
    required Function operation,
    required double width,
    required double height}) {
  return InkWell(
    onTap: () {
      print("I AM WORKING");
      operation();
    },
    child: Container(
      decoration: BoxDecoration(
          color: primaryColor, borderRadius: BorderRadius.circular(15)),
      padding: EdgeInsets.symmetric(horizontal: width, vertical: height),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
      ),
    ),
  );
}
