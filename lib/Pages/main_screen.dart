import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../config.dart';
import '../Widget/generate_drawer.dart';
import '../Widget/generate_card.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      //drawer: Drawer(backgroundColor: sile_mavisi,child: ListView(children: []),),
      drawer: generate_list(context),
      backgroundColor: Color.fromRGBO(250, 250, 250, 1),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(main_arkaplan),
          fit: BoxFit.cover,
        )),
        child: Stack(children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              //mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.width / 3,
                      ),
                      build_card(
                          context,
                          mekan_camlikrest,
                          Text(
                            "Tesislerimiz",
                            style: GoogleFonts.spartan(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Text(
                            "Şilenin doğasıyla bütünleşmiş eşsiz tesislerimizi keşfedin",
                            style: GoogleFonts.spartan(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    height: 1.5)),
                          ),
                          Colors.black,
                          '/mekanlar'),
                      SizedBox(
                        height: 15,
                      ),
                      build_card(
                          context,
                          plaj_ayazma,
                          Text(
                            "Plajlar",
                            style: GoogleFonts.spartan(
                                textStyle: TextStyle(
                                    color: sile_sarisi_comp,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Text(
                            "Yazın tadını eşsiz plajlarımızda çıkarın",
                            style: GoogleFonts.spartan(
                                textStyle: TextStyle(
                                    color: sile_sarisi_comp,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    height: 1.5)),
                          ),
                          sile_sarisi,
                          '/plajlar'),
                      SizedBox(
                        height: 15,
                      ),
                      build_card(
                          context,
                          mesrutiyetmagra,
                          Text(
                            "Doğal Güzellikler",
                            style: GoogleFonts.spartan(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Text(
                            "Şile'nin saklı güzelliklerine göz atın",
                            style: GoogleFonts.spartan(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    height: 1.5)),
                          ),
                          sile_kirmizisi,
                          '/treasure'),
                      SizedBox(
                        height: 15,
                      ),
                      build_card(
                          context,
                          yemek_foto,
                          Text(
                            "Gastronomi",
                            style: GoogleFonts.spartan(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Text(
                            "Yöresel lezzetlerimizi keşfedin",
                            style: GoogleFonts.spartan(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    height: 1.5)),
                          ),
                          sile_yesili,
                          '/gastro'),
                      SizedBox(
                        height: 15,
                      ),
                      build_card(
                          context,
                          rehber_foto,
                          Text(
                            "Şile Rehberi",
                            style: GoogleFonts.spartan(
                                textStyle: TextStyle(
                                    color: Colors.grey[350],
                                    fontWeight: FontWeight.bold)),
                          ),
                          Text(
                            "En bilinen özelliklerimizi keşfedin",
                            style: GoogleFonts.spartan(
                                textStyle: TextStyle(
                                    color: Colors.grey[350],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    height: 1.5)),
                          ),
                          sile_mavisi,
                          '/rehber'),
                      SizedBox(
                        height: 15,
                      ),
                      build_card(
                          context,
                          tarih_foto,
                          Text(
                            "Tarihi Yapılar",
                            style: GoogleFonts.spartan(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Text(
                            "Şile'nin tarihine siz de tanık olun",
                            style: GoogleFonts.spartan(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    height: 1.5)),
                          ),
                          sile_kirmizisi,
                          '/history'),
                    ]),
              ],
            ),
          ),
          Stack(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Expanded(
                  child: Material(
                    //color: sile_mavisi,
                    color: sile_sarisi,
                    //color: sile_kirmizisi,
                    borderRadius: new BorderRadius.vertical(
                        bottom: new Radius.elliptical(
                            MediaQuery.of(context).size.width, 65)),
                    elevation: 5,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      //constraints:BoxConstraints(maxWidth: double.infinity, maxHeight: 50),
                      height: 50, width: 10,
                      //decoration: BoxDecoration(color: Colors.amber),
                    ),
                  ),
                ),
              ]),
              Align(
                  alignment: Alignment.topCenter,
                  child: Image(
                    image: AssetImage('assets/main/silelogo.png'),
                    width: MediaQuery.of(context).size.width / 3,
                    //height: MediaQuery.of(context).size.height/3,
                  )),
              IconButton(
                  onPressed: () {
                    _globalKey.currentState?.openDrawer();
                  },
                  icon: Icon(
                    Icons.menu_rounded,
                    color: Colors.black,
                  )),
              Align(
                alignment: Alignment.topRight,
                child: Transform.scale(
                  scale: 0.8,
                  child: FloatingActionButton(
                    heroTag: "btn1",
                    foregroundColor: Colors.black,
                    backgroundColor: sile_sarisi,
                    splashColor: Colors.green,
                    elevation: 3,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios_new_rounded),
                  ),
                ),
              )
              //color: sile_kirmizisi)),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}
