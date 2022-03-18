import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../config.dart';
import '../Pages/launch_function.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

double yk(double yk1) {
  return yk1--;
}

ScrollController sc = ScrollController();

Widget makeHistoryPage(String map_location, String image, String title,
    String description, int page, int totalPageh, BuildContext context) {
  return Stack(children: [
    Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.55), BlendMode.darken),
            image: AssetImage(image),
            fit: BoxFit.cover),
      ),
      child: SingleChildScrollView(
        controller: sc,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0, top: 8, bottom: 15),
            child: Row(
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
          ),
          // SizedBox(
          //   height: 250,
          // ),
          SizedBox(
            //duration: const Duration(seconds: 1),
            height: MediaQuery.of(context).size.height / 2,
            //width: 250,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10, bottom: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Text(
                    title,
                    style: GoogleFonts.spartan(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 45)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Text(description,
                      style: GoogleFonts.spartan(
                          textStyle: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontWeight: FontWeight.w600,
                              height: 1.9,
                              fontSize: 16))),
                ),
              ],
            ),
          )
        ]),
      ),
    ),
    Padding(
        padding: EdgeInsets.all(8),
        child: FloatingActionButton(
          heroTag: "btn1",
          foregroundColor: Colors.black,
          backgroundColor: Colors.white54,
          splashColor: Colors.green,
          elevation: 11,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new_rounded),
        )),
    Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          heroTag: "btn2",
          foregroundColor: Colors.black,
          backgroundColor: Colors.white70,
          splashColor: Colors.green,
          elevation: 11,
          onPressed: () {
            sc.position.moveTo(0);
          },
          child: Icon(Icons.arrow_upward_outlined),
        ),
      ),
    )
  ]);
}
