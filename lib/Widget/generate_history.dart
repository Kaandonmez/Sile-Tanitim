import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../config.dart';
import '../Pages/launch_function.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget makeHistoryPage(String map_location, String image, String title,
    String description, int page, int totalPageh) {
  return Stack(children: [
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
    ),
    Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
        0.3,
        0.9
      ], colors: [
        Colors.black.withOpacity(0.9),
        Colors.black.withOpacity(0.2)
      ])),
      child: Padding(
        padding: EdgeInsets.only(top: 0, right: 10, left: 10, bottom: 0),
        child: Stack(
          children: [
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  page.toString(),
                  style: GoogleFonts.spartan(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30)),
                ),
                Text(
                  "/" + totalPageh.toString(),
                  style: GoogleFonts.spartan(
                      textStyle: TextStyle(color: Colors.white, fontSize: 15)),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  title,
                  style: GoogleFonts.spartan(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 45)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Text(description,
                      style: GoogleFonts.spartan(
                          textStyle: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              //fontWeight: FontWeight.bold,
                              height: 1.5,
                              fontSize: 14))),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  ]);
}
