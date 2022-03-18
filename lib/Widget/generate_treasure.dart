import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../config.dart';
import '../Pages/launch_function.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget makePage(String map_location, String image, String title,
    String description, int page, int totalPaget, BuildContext context) {
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
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 40,
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
                  "/" + totalPaget.toString(),
                  style: GoogleFonts.spartan(
                      textStyle: TextStyle(color: Colors.white, fontSize: 15)),
                ),
              ],
            ),
            Expanded(
                child: Column(
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
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: Icon(Icons.star, color: Colors.yellow, size: 15),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: Icon(Icons.star, color: Colors.yellow, size: 15),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: Icon(Icons.star, color: Colors.yellow, size: 15),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: Icon(Icons.star, color: Colors.yellow, size: 15),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: Icon(Icons.star, color: Colors.yellow, size: 15),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Material(
                      elevation: 8,
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.amber.withOpacity(0.5),
                      child: TextButton(
                        onPressed: () {
                          launchMap(map_location);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Rota oluştur ",
                              style: GoogleFonts.spartan(
                                  color: Colors.blue[900],
                                  fontWeight: FontWeight.w800),
                            ),
                            FaIcon(
                              FontAwesomeIcons.mapMarkedAlt,
                              color: Colors.blue[900],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 0,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(description,
                      style: GoogleFonts.spartan(
                          textStyle: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              //fontWeight: FontWeight.bold,
                              height: 1.9,
                              fontSize: 14))),
                ),
              ],
            ))
          ],
        ),
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
        ))
  ]);
}
