// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sile/main.dart';
//import 'package:sile/Widget/generate_button_asset.dart' as eos1;
//import 'package:sile/main.dart';
//import '../Widget/generate_button.dart';
import '../config.dart';
import '../Widget/generate_drawer.dart';
import '../Widget/generate_card.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flip_card/flip_card.dart';

class Plajlar extends StatefulWidget {
  const Plajlar({Key? key}) : super(key: key);

  @override
  State<Plajlar> createState() => _PlajlarState();
}

class _PlajlarState extends State<Plajlar> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  _launchMap(String mapUrl) async {
    if (await canLaunch(mapUrl)) {
      await launch(mapUrl);
    }
  }

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
                image: AssetImage(plaj_akcakese),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.darken))),
        child: Stack(children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              //mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width / 3,
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Ayr??nt??l?? bilgi i??in plaj bilgi kartlar??n??n ??zerine bas??n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FlipCard(
                        fill: Fill
                            .fillBack, // Fill the back side of the card to make in the same size as the front.
                        direction: FlipDirection.VERTICAL, // default
                        front: Material(
                          color: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.3),
                                        BlendMode.darken),
                                    image: AssetImage(plaj_kumbaba),
                                    fit: BoxFit.cover)),
                            width: MediaQuery.of(context).size.width - 10,
                            height: 320,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                  'KUMBABA PLAJI',
                                  style: GoogleFonts.spartan(
                                      textStyle: TextStyle(
                                          color: Colors.yellow[800],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        back: Material(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue.withOpacity(0.4),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.6),
                                        BlendMode.darken),
                                    image: AssetImage(plaj_kumbaba),
                                    fit: BoxFit.cover)),
                            width: MediaQuery.of(context).size.width - 10,
                            height: 320,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(children: [
                                Text(
                                  '??l??emizin ??nemli ve merkezi plajlar??ndan biri olan Kumbaba Plaj?????n??n farkl?? bir ??zelli??i var. Kumbaba Mahallesinde 1960\'l?? y??llardan beri s??re gelen bir gelene??i devam ettiriyoruz. Kumbaba Plaj??m??za ula??mak i??in otantik sal??m??z?? kullanabilir, Kum zambaklar??yla dolu bir yoldan y??r??yerek Kumbaba Plaj?????na ula??abilirsiniz.',
                                  style: GoogleFonts.spartan(
                                      textStyle:
                                          TextStyle(color: Colors.yellow[800])),
                                ),
                                TextButton(
                                  onPressed: () {
                                    _launchMap(map_kumbaba);
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Rota olu??tur",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold),
                                      ),

                                      //  _launchMap(map_kumbaba);

                                      Icon(
                                        Icons.navigation_outlined,
                                        color: Colors.blue,
                                      )
                                    ],
                                  ),
                                )
                              ]),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FlipCard(
                        fill: Fill
                            .fillBack, // Fill the back side of the card to make in the same size as the front.
                        direction: FlipDirection.HORIZONTAL, // default
                        front: Material(
                          color: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.3),
                                        BlendMode.darken),
                                    image: AssetImage(plaj_akcakese),
                                    fit: BoxFit.cover)),
                            width: MediaQuery.of(context).size.width - 10,
                            height: 320,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                  'AK??AKESE PLAJI',
                                  style: GoogleFonts.spartan(
                                      textStyle: TextStyle(
                                          color: Colors.yellow[800],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        back: Material(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue.withOpacity(0.4),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.6),
                                        BlendMode.darken),
                                    image: AssetImage(plaj_akcakese),
                                    fit: BoxFit.cover)),
                            width: MediaQuery.of(context).size.width - 10,
                            height: 320,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(children: [
                                Text(
                                  '??ile???ye yakla????k 17 kilometre mesafede bir sahil k??y?? olan Ak??akese K??y??, ??zellikle hafta sonu ??ile???ye gelip ??ile merkezi d??????nda farkl?? bir yer g??rmek isteyenler i??in ??ok ideal. K??y ayn?? zamanda Ak??akese Plaj?? ile de ??nl??. E??siz bir do??as?? var. ??zellikle yaz aylar??nda ??ile???nin kalabal??k sahillerinden uzakla??mak isteyenler buray?? tercih ediyor.',
                                  style: GoogleFonts.spartan(
                                      textStyle:
                                          TextStyle(color: Colors.yellow[800])),
                                ),
                                TextButton(
                                  onPressed: () {
                                    _launchMap(map_akcakese);
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Rota olu??tur",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold),
                                      ),

                                      //  _launchMap(map_akcakese);

                                      Icon(
                                        Icons.navigation_outlined,
                                        color: Colors.blue,
                                      )
                                    ],
                                  ),
                                )
                              ]),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      FlipCard(
                        fill: Fill
                            .fillBack, // Fill the back side of the card to make in the same size as the front.
                        direction: FlipDirection.VERTICAL, // default
                        front: Material(
                          color: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.3),
                                        BlendMode.darken),
                                    image: AssetImage(plaj_aglayankaya),
                                    fit: BoxFit.cover)),
                            width: MediaQuery.of(context).size.width - 10,
                            height: 320,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                  'A??LAYANKAYA PLAJI',
                                  style: GoogleFonts.spartan(
                                      textStyle: TextStyle(
                                          color: Colors.yellow[800],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        back: Material(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue.withOpacity(0.4),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.6),
                                        BlendMode.darken),
                                    image: AssetImage(plaj_aglayankaya),
                                    fit: BoxFit.cover)),
                            width: MediaQuery.of(context).size.width - 10,
                            height: 320,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(children: [
                                Text(
                                  'Balibey Mahallesinde bulunan A??layankaya Plaj??, yaz sezonunda hem ??ilelilerin, hem de turistlerin deniz keyfi i??in s??kl??kla tercih ettikleri ??nemli plajlardan biridir. ??zerinde yer alan kaliteli i??letmelerde keyifli vakit ge??irebilir, Karadeniz???in keyfini g??venle ya??ayabilirsiniz.',
                                  style: GoogleFonts.spartan(
                                      textStyle:
                                          TextStyle(color: Colors.yellow[800])),
                                ),
                                TextButton(
                                  onPressed: () {
                                    _launchMap(map_aglayankaya);
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Rota olu??tur",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold),
                                      ),

                                      //  _launchMap(map_aglayankaya);

                                      Icon(
                                        Icons.navigation_outlined,
                                        color: Colors.blue,
                                      )
                                    ],
                                  ),
                                )
                              ]),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FlipCard(
                        fill: Fill
                            .fillBack, // Fill the back side of the card to make in the same size as the front.
                        direction: FlipDirection.HORIZONTAL, // default
                        front: Material(
                          color: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.3),
                                        BlendMode.darken),
                                    image: AssetImage(plaj_agva),
                                    fit: BoxFit.cover)),
                            width: MediaQuery.of(context).size.width - 10,
                            height: 320,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                  'A??VA PLAJI',
                                  style: GoogleFonts.spartan(
                                      textStyle: TextStyle(
                                          color: Colors.yellow[800],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        back: Material(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue.withOpacity(0.4),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.6),
                                        BlendMode.darken),
                                    image: AssetImage(plaj_agva),
                                    fit: BoxFit.cover)),
                            width: MediaQuery.of(context).size.width - 10,
                            height: 320,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(children: [
                                Text(
                                  '??l??emizin en ??nemli ve pop??ler plajlar??ndan bir di??eri de A??va Plaj??d??r. A??va, yakla????k 2,5 kilometre uzunlu??unda ve 50 metre geni??li??inde do??al bir kum bir plaja sahip. A??va???n??n uzun sahil ??eridi, g??zel denizi ve kum plaj??nda ??zellikle yaz aylar??n??n bunalt??c?? havas??nda serinleyebilir, g??ne??in tad??n?? ????karabilirsiniz.',
                                  style: GoogleFonts.spartan(
                                      textStyle:
                                          TextStyle(color: Colors.yellow[800])),
                                ),
                                TextButton(
                                  onPressed: () {
                                    _launchMap(map_agvaplaji);
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Rota olu??tur",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold),
                                      ),

                                      //  _launchMap(map_agvaplaji);

                                      Icon(
                                        Icons.navigation_outlined,
                                        color: Colors.blue,
                                      )
                                    ],
                                  ),
                                )
                              ]),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FlipCard(
                        fill: Fill
                            .fillBack, // Fill the back side of the card to make in the same size as the front.
                        direction: FlipDirection.VERTICAL, // default
                        front: Material(
                          color: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.3),
                                        BlendMode.darken),
                                    image: AssetImage(plaj_ayazma),
                                    fit: BoxFit.cover)),
                            width: MediaQuery.of(context).size.width - 10,
                            height: 320,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                  'AYAZMA PLAJI',
                                  style: GoogleFonts.spartan(
                                      textStyle: TextStyle(
                                          color: Colors.yellow[800],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        back: Material(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue.withOpacity(0.4),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.6),
                                        BlendMode.darken),
                                    image: AssetImage(plaj_ayazma),
                                    fit: BoxFit.cover)),
                            width: MediaQuery.of(context).size.width - 10,
                            height: 320,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(children: [
                                Text(
                                  '??ile???nin giri?? taraf??nda yer alan, geni?? ve kum bir plaj olan Ayazma Plaj??, ??ile Halk Plaj?? olarak da an??l??r. ??ile???nin ???en sakin??? deniz ??eridinde yer al??r. 1175 metre uzunlu??unda ve 50 metre geni??li??indedir. Kumbaba Plaj??na do??ru uzanan sahil band?? ??zerinde bulunan i??letmelerde denizin ve kumun keyfini ????kartabilirsiniz.??ile Ayazma Plaj?????n??n sahip oldu??u hizmetler ve olanaklar i??inde, Cankurtaran, Du??, ??ezlong, ??emsiye, Soyunma Kabinleri ve Tuvalet (WC) yer almaktad??r.',
                                  style: GoogleFonts.spartan(
                                      textStyle:
                                          TextStyle(color: Colors.yellow[800])),
                                ),
                                TextButton(
                                  onPressed: () {
                                    _launchMap(map_ayazma);
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Rota olu??tur",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.navigation_outlined,
                                        color: Colors.blue,
                                      )
                                    ],
                                  ),
                                )
                              ]),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FlipCard(
                        fill: Fill
                            .fillBack, // Fill the back side of the card to make in the same size as the front.
                        direction: FlipDirection.HORIZONTAL, // default
                        front: Material(
                          color: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.3),
                                        BlendMode.darken),
                                    image: AssetImage(plaj_imrenli),
                                    fit: BoxFit.cover)),
                            width: MediaQuery.of(context).size.width - 10,
                            height: 320,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                  '??MRENL?? PLAJI',
                                  style: GoogleFonts.spartan(
                                      textStyle: TextStyle(
                                          color: Colors.yellow[800],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        back: Material(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue.withOpacity(0.4),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.6),
                                        BlendMode.darken),
                                    image: AssetImage(plaj_imrenli),
                                    fit: BoxFit.cover)),
                            width: MediaQuery.of(context).size.width - 10,
                            height: 320,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(children: [
                                Text(
                                  '??ile il??esi s??n??rlar?? i??erisinde yer alan ??cretsiz bir plaj olup, ba??l?? bulundu??u il??enin merkezine 20 Km mesafededir. Ak??akese K??y??\'nden sonra gelen ??mrenli Plaj?? bilinirli??i fazla oldu??undan ??zellikle A??va\'ya gelenlerin de u??rak adresidir. Yak??nlardaki bir??ok plaja g??re daha sakin say??labilir. 650 Metre uzunlu??unda kum plaja sahip ??ile ??mrenli Plaj?????n??n sahip oldu??u hizmetler ve olanaklar i??inde, Cankurtaran, Du??, ??ezlong, ??emsiye, Soyunma Kabinleri ve Tuvalet(WC) yer almaktad??r.',
                                  style: GoogleFonts.spartan(
                                      textStyle:
                                          TextStyle(color: Colors.yellow[800])),
                                ),
                                TextButton(
                                  onPressed: () {
                                    _launchMap(map_imrenli);
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Rota olu??tur",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold),
                                      ),

                                      //  _launchMap(map_imrenli);

                                      Icon(
                                        Icons.navigation_outlined,
                                        color: Colors.blue,
                                      )
                                    ],
                                  ),
                                )
                              ]),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FlipCard(
                        fill: Fill
                            .fillBack, // Fill the back side of the card to make in the same size as the front.
                        direction: FlipDirection.VERTICAL, // default
                        front: Material(
                          color: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.3),
                                        BlendMode.darken),
                                    image: AssetImage(plaj_kabakoz),
                                    fit: BoxFit.cover)),
                            width: MediaQuery.of(context).size.width - 10,
                            height: 320,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                  'KABAKOZ PLAJI',
                                  style: GoogleFonts.spartan(
                                      textStyle: TextStyle(
                                          color: Colors.yellow[800],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        back: Material(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue.withOpacity(0.4),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.6),
                                        BlendMode.darken),
                                    image: AssetImage(plaj_kabakoz),
                                    fit: BoxFit.cover)),
                            width: MediaQuery.of(context).size.width - 10,
                            height: 320,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(children: [
                                Text(
                                  '??l??e merkezine 15 Km mesafede olmas?? sebebiyle di??er plajlara g??re daha sakin olan Kabakoz Plaj??, yaln??zca y??zmek, g??ne??lenmek ve bu s??rada dalga seslerini dinlemek isteyen evli ve aile ile seyahat eden tatilciler i??in ideal bir se??enektir. 350 Metre uzunlu??unda kum plaja sahip ??ile Kabakoz Plaj?????n??n sahip oldu??u hizmetler ve olanaklar i??inde, Cankurtaran, Du??, ??ezlong, ??emsiye, Soyunma Kabinleri ve Tuvalet (WC) yer almaktad??r.',
                                  style: GoogleFonts.spartan(
                                      textStyle:
                                          TextStyle(color: Colors.yellow[800])),
                                ),
                                TextButton(
                                  onPressed: () {
                                    _launchMap(map_kabakoz);
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Rota olu??tur",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold),
                                      ),

                                      //  _launchMap(map_kabakoz);

                                      Icon(
                                        Icons.navigation_outlined,
                                        color: Colors.blue,
                                      )
                                    ],
                                  ),
                                )
                              ]),
                            ),
                          ),
                        ),
                      ),

                      //
                      SizedBox(
                        height: 20,
                      ),
                      FlipCard(
                        fill: Fill
                            .fillBack, // Fill the back side of the card to make in the same size as the front.
                        direction: FlipDirection.VERTICAL, // default
                        front: Material(
                          color: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.3),
                                        BlendMode.darken),
                                    image: AssetImage(plaj_uzunkum),
                                    fit: BoxFit.cover)),
                            width: MediaQuery.of(context).size.width - 10,
                            height: 320,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                  'UZUNKUM PLAJI',
                                  style: GoogleFonts.spartan(
                                      textStyle: TextStyle(
                                          color: Colors.yellow[800],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        back: Material(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue.withOpacity(0.4),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.6),
                                        BlendMode.darken),
                                    image: AssetImage(plaj_uzunkum),
                                    fit: BoxFit.cover)),
                            width: MediaQuery.of(context).size.width - 10,
                            height: 320,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(children: [
                                Text(
                                  'Uzunkum Plaj?? Aqua Beach Club gayet b??y??k bir plaj, ??ile???nin di??er plajlar??na  nazaran daha tenha ve daha d??zg??n. Denizi de ??ok daha temiz. ??ile Uzunkum plaj?? ??ile plajlar?? aras??nda denizi en temiz olan??, hi?? yosun ve deniz anas?? yok, kumu da gayet g??zel ince kum, ??ak??l yok denecek kadar az. ??ster Aquabeach???e ait yerde, isterseniz ??cretsiz olan halk plaj?? taraf??nda denize girebilirsiniz. Denizi suyu s??cak ve dalgal??d??r.',
                                  style: GoogleFonts.spartan(
                                      textStyle:
                                          TextStyle(color: Colors.yellow[800])),
                                ),
                                TextButton(
                                  onPressed: () {
                                    _launchMap(map_uzunkum);
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Rota olu??tur",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold),
                                      ),

                                      //  _launchMap(map_uzunkum);

                                      Icon(
                                        Icons.navigation_outlined,
                                        color: Colors.blue,
                                      )
                                    ],
                                  ),
                                )
                              ]),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
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
        ]),
      ),
    );
  }
}
