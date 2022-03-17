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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Material(
                            //color: sile_mavisi,
                            color: sile_sarisi,
                            //color: sile_kirmizisi,
                            borderRadius: BorderRadius.vertical(
                                bottom: Radius.elliptical(
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
                  Center(
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
                      ))
                  //color: sile_kirmizisi)),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Ayrıntılı bilgi için plaj bilgi kartlarının üzerine basın",
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
                                'İlçemizin önemli ve merkezi plajlarından biri olan Kumbaba Plajı’nın farklı bir özelliği var. Kumbaba Mahallesinde 1960\'lı yıllardan beri süre gelen bir geleneği devam ettiriyoruz. Kumbaba Plajımıza ulaşmak için otantik salımızı kullanabilir, Kum zambaklarıyla dolu bir yoldan yürüyerek Kumbaba Plajı’na ulaşabilirsiniz.',
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
                                      "Rota oluştur",
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
                                'AKÇAKESE PLAJI',
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
                                'Şile‘ye yaklaşık 17 kilometre mesafede bir sahil köyü olan Akçakese Köyü, özellikle hafta sonu Şile’ye gelip Şile merkezi dışında farklı bir yer görmek isteyenler için çok ideal. Köy aynı zamanda Akçakese Plajı ile de ünlü. Eşsiz bir doğası var. Özellikle yaz aylarında Şile’nin kalabalık sahillerinden uzaklaşmak isteyenler burayı tercih ediyor.',
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
                                      "Rota oluştur",
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
                                'AĞLAYANKAYA PLAJI',
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
                                'Balibey Mahallesinde bulunan Ağlayankaya Plajı, yaz sezonunda hem Şilelilerin, hem de turistlerin deniz keyfi için sıklıkla tercih ettikleri önemli plajlardan biridir. Üzerinde yer alan kaliteli işletmelerde keyifli vakit geçirebilir, Karadeniz’in keyfini güvenle yaşayabilirsiniz.',
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
                                      "Rota oluştur",
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
                                'AĞVA PLAJI',
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
                                'İlçemizin en önemli ve popüler plajlarından bir diğeri de Ağva Plajıdır. Ağva, yaklaşık 2,5 kilometre uzunluğunda ve 50 metre genişliğinde doğal bir kum bir plaja sahip. Ağva’nın uzun sahil şeridi, güzel denizi ve kum plajında özellikle yaz aylarının bunaltıcı havasında serinleyebilir, güneşin tadını çıkarabilirsiniz.',
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
                                      "Rota oluştur",
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
                                'Şile’nin giriş tarafında yer alan, geniş ve kum bir plaj olan Ayazma Plajı, Şile Halk Plajı olarak da anılır. Şile’nin ‘en sakin’ deniz şeridinde yer alır. 1175 metre uzunluğunda ve 50 metre genişliğindedir. Kumbaba Plajına doğru uzanan sahil bandı üzerinde bulunan işletmelerde denizin ve kumun keyfini çıkartabilirsiniz.Şile Ayazma Plajı’nın sahip olduğu hizmetler ve olanaklar içinde, Cankurtaran, Duş, Şezlong, Şemsiye, Soyunma Kabinleri ve Tuvalet (WC) yer almaktadır.',
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
                                      "Rota oluştur",
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
                                'İMRENLİ PLAJI',
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
                                'Şile ilçesi sınırları içerisinde yer alan Ücretsiz bir plaj olup, bağlı bulunduğu ilçenin merkezine 20 Km mesafededir. Akçakese Köyü\'nden sonra gelen İmrenli Plajı bilinirliği fazla olduğundan özellikle Ağva\'ya gelenlerin de uğrak adresidir. Yakınlardaki birçok plaja göre daha sakin sayılabilir. 650 Metre uzunluğunda kum plaja sahip Şile İmrenli Plajı’nın sahip olduğu hizmetler ve olanaklar içinde, Cankurtaran, Duş, Şezlong, Şemsiye, Soyunma Kabinleri ve Tuvalet(WC) yer almaktadır.',
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
                                      "Rota oluştur",
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
                                'İlçe merkezine 15 Km mesafede olması sebebiyle diğer plajlara göre daha sakin olan Kabakoz Plajı, yalnızca yüzmek, güneşlenmek ve bu sırada dalga seslerini dinlemek isteyen evli ve aile ile seyahat eden tatilciler için ideal bir seçenektir. 350 Metre uzunluğunda kum plaja sahip Şile Kabakoz Plajı’nın sahip olduğu hizmetler ve olanaklar içinde, Cankurtaran, Duş, Şezlong, Şemsiye, Soyunma Kabinleri ve Tuvalet (WC) yer almaktadır.',
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
                                      "Rota oluştur",
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
                                'Uzunkum Plajı Aqua Beach Club gayet büyük bir plaj, Şile’nin diğer plajlarına  nazaran daha tenha ve daha düzgün. Denizi de çok daha temiz. Şile Uzunkum plajı Şile plajları arasında denizi en temiz olanı, hiç yosun ve deniz anası yok, kumu da gayet güzel ince kum, çakıl yok denecek kadar az. İster Aquabeach’e ait yerde, isterseniz ücretsiz olan halk plajı tarafında denize girebilirsiniz. Denizi suyu sıcak ve dalgalıdır.',
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
                                      "Rota oluştur",
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
      ),
    );
  }
}
