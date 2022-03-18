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
          title: FloatingActionButton(
            elevation: 2,
            backgroundColor: Colors.grey[800],
            heroTag: "btn1",
            onPressed: (() {
              Navigator.pop(context);
            }),
            child: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.grey),
          )),
      body: Container(
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
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
                          color: Colors.amber[800], fontSize: 15)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "Bu uygulama Şile'yi daha yakından tanımak isteyip keşfetmek isteyen kişiler için tasarlanmıştır. \n\n Uygulama içerisinde Şile Belediyesine ait sosyal tesislere kafelere ve restaurantlara ait konum bilgilerine ulaşabilirsiniz. Ayrıca plaj lokasyonlarına, tarihi yapılara, geleneksel yemeklere ait bilgilere de ulaşabilirisiniz.  ",
                      style: GoogleFonts.spartan(
                          color: Colors.white70, fontSize: 14, height: 1.9))
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
