import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Credits extends StatelessWidget {
  const Credits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.grey[800],
          title: Stack(
            children: [
              FloatingActionButton(
                elevation: 2,
                backgroundColor: Colors.grey[800],
                heroTag: "btn1",
                onPressed: (() {
                  Navigator.pop(context);
                }),
                child:
                    Icon(Icons.arrow_back_ios_new_rounded, color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text("Hakkında",
                      style: GoogleFonts.spartan(
                          color: Colors.white70, fontSize: 17)),
                ),
              )
            ],
          )),
      body: Container(
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
            child: Material(
              borderRadius: BorderRadius.circular(15),
              color: Colors.blueGrey[800],
              child: Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width - 10,
                //height: 150,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Text("Uygulama Hakkında",
                      style: GoogleFonts.spartan(
                          color: Colors.amber[800], fontSize: 18)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "Bu uygulama Şile'yi daha yakından tanımak ve keşfetmek isteyen kişiler için tasarlanmıştır.\n\nUygulama içerisinde Şile Belediyesine ait sosyal tesislere kafelere ve restaurantlara ait konum bilgilerine göz atabilirsiniz. Ayrıca plaj lokasyonlarına, tarihi yapılara, geleneksel yemeklere ait bilgilere de ulaşabilirisiniz. \n\nŞilede keyifli vakit geçirmeniz dileğiyle.",
                      style: GoogleFonts.spartan(
                          color: Colors.white70, fontSize: 15, height: 1.8)),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.beach_access_rounded, color: Colors.yellow),
                      SizedBox(
                        width: 0,
                      ),
                      Icon(Icons.pool_rounded, color: Colors.blue),
                      SizedBox(
                        width: 0,
                      ),
                      Icon(Icons.restaurant, color: Colors.orange),
                      SizedBox(
                        width: 0,
                      ),
                      Icon(Icons.luggage_rounded, color: Colors.green),
                      SizedBox(
                        width: 0,
                      ),
                      Icon(Icons.directions_bike_rounded, color: Colors.teal),
                      SizedBox(
                        width: 0,
                      ),
                      Icon(Icons.lunch_dining_rounded,
                          color: Colors.yellow[800]),
                      SizedBox(
                        width: 0,
                      ),
                      Icon(Icons.outdoor_grill_rounded, color: Colors.red[300]),
                      SizedBox(
                        width: 0,
                      ),
                      Icon(Icons.surfing_rounded, color: Colors.blue),
                      SizedBox(
                        width: 0,
                      ),
                      Icon(Icons.kitesurfing_rounded, color: Colors.lightBlue),
                      SizedBox(
                        width: 0,
                      ),
                      Icon(Icons.hiking, color: Colors.brown[400]),
                      SizedBox(
                        width: 0,
                      ),
                    ],
                  )
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
