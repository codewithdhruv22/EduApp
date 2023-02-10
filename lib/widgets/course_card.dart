import 'package:cached_network_image/cached_network_image.dart';
import 'package:edu/color.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

Widget CourseCard(
    {required String imgUrl,
    required String title,
    required String duration,
    required int rating,
    required Function redirectionFunc}) {
  return Container(
    width: 220,
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
          color: Color.fromARGB(255, 238, 238, 238),
          spreadRadius: 1,
          blurRadius: 5),
    ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
    child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10), // Image border
              child: SizedBox.fromSize(
                // Image radius
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: imgUrl,
                  placeholder: (context, url) => Container(
                      height: 110,
                      child: Center(child: CircularProgressIndicator())),
                  errorWidget: (context, url, error) => new Icon(Icons.error),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Text(
                  'Duration • $duration ',
                  style: TextStyle(
                      fontWeight: FontWeight.w800, color: primaryColor),
                ),
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
                SizedBox(
                  height: 5,
                )
              ],
            ),
            ElevatedButton(
              onPressed: () {
                print("Redirecting Course");
                redirectionFunc();
              },
              child: Text(
                'Get The Course',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              ),
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(400, 40)),
                  backgroundColor: MaterialStateProperty.all(primaryColor)),
            )
          ],
        )),
  );
}
