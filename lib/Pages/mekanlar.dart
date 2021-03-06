// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../config.dart';
import '../Widget/generate_drawer.dart';
//import '../Widget/generate_card.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Mekanlar extends StatefulWidget {
  const Mekanlar({Key? key}) : super(key: key);

  @override
  State<Mekanlar> createState() => _MekanlarState();
}

class _MekanlarState extends State<Mekanlar> {
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
                image: AssetImage(mekan_limangutta),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.8), BlendMode.darken))),
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
                      Card(
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.55),
                                      BlendMode.darken),
                                  image: AssetImage(mekan_sofularmesire),
                                  fit: BoxFit.cover)),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 36.0, left: 6.0, right: 6.0, bottom: 6.0),
                            child: ExpansionTile(
                              collapsedIconColor: Colors.amber,
                              iconColor: Colors.amber,
                              title: Text(
                                'Sofular Mesire Alan??',
                                style: GoogleFonts.spartan(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        height: 1.9)),
                              ),
                              children: <Widget>[
                                Text(
                                  'Sofular mahallemizde yer alan ve denize k??y??s?? olan mesire alan??m??z ziyaret??ilerine hem deniz ve plaj keyfi hem de ayn?? zamanda do??a ile i?? i??e dinleme imkan?? sunuyor. Mesire alan??m??z??n i??erisinde bulunan otopark ve kamp merakl??lar??na ayr??lm???? b??l??m??n yan?? s??ra deniz manzaras?? e??li??i ve ??am a??a??lar??n??n g??lgesinde yapaca????n??z piknik alan?? ile unutulmaz bir g??n ge??irece??inizin garantisini veriyor.',
                                  style: GoogleFonts.spartan(
                                      textStyle: TextStyle(
                                          color: Colors.lime,
                                          fontWeight: FontWeight.w400,
                                          height: 1.9)),
                                ),
                                TextButton(
                                  onPressed: () {
                                    _launchMap(map_sofular);
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
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Card(
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.55),
                                      BlendMode.darken),
                                  image: AssetImage(mekan_alasile),
                                  fit: BoxFit.cover)),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 36.0, left: 6.0, right: 6.0, bottom: 6.0),
                            child: ExpansionTile(
                              collapsedIconColor: Colors.amber,
                              iconColor: Colors.amber,
                              title: Text(
                                '??-L?? ????LE',
                                style: GoogleFonts.spartan(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        height: 1.9)),
                              ),
                              children: <Widget>[
                                Text(
                                  'E??siz manzaras??, do??al koydan olu??an plaj??yla b??y??l?? atmosferiyle ??ile???nin yeni g??zbebe??i??? Sosyal Belediyecilik ??al????malar?? ??er??evesinde, ??lke genelinde ??rne??i olmayan bir konseptte haz??rlanan A-LA ??ile Kad??nlar Plaj?? yaz aylar??nda saat 10.00-19.00 aras?? sadece kad??nlar??m??za hizmet vermektedir. Saat 19.00???dan sonra restoran b??l??m?? e??siz manzaras??yla ailelerimizi misafir ediyor.',
                                  style: GoogleFonts.spartan(
                                      textStyle: TextStyle(
                                          color: Colors.lime,
                                          fontWeight: FontWeight.w400,
                                          height: 1.9)),
                                ),
                                Column(
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        _launchMap(map_alasile);
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Rota olu??tur  ",
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
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        _launchMap(tel_alasile);
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Telefon iler rezervasyon yap??n  ",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Icon(
                                            Icons.phone,
                                            color: Colors.green,
                                          )
                                        ],
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        _launchMap(url_alasile);
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Instagram adresi  ",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          FaIcon(
                                            FontAwesomeIcons.instagram,
                                            color: Colors.red,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Card(
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.55),
                                      BlendMode.darken),
                                  image: AssetImage(mekan_limangutta),
                                  fit: BoxFit.cover)),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 36.0, left: 6.0, right: 6.0, bottom: 6.0),
                            child: ExpansionTile(
                              collapsedIconColor: Colors.amber,
                              iconColor: Colors.amber,
                              title: Text(
                                'L??MAN GUTTA',
                                style: GoogleFonts.spartan(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        height: 1.9)),
                              ),
                              children: <Widget>[
                                Text(
                                  '??ile Liman??nda birbirinden g??zel i??ecek ve tatl?? ??e??itleriyle yorgunlu??unuzu unutaca????n??z bir mek??nda dinlenmek sizin de hakk??n??z. ??zellikle manzaras??yla Liman Gutta kafemizde size dingin bir ortam sunuyor.',
                                  style: GoogleFonts.spartan(
                                      textStyle: TextStyle(
                                          color: Colors.lime,
                                          fontWeight: FontWeight.w400,
                                          height: 1.9)),
                                ),
                                TextButton(
                                  onPressed: () {
                                    _launchMap(map_limagutta);
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
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Card(
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.55),
                                      BlendMode.darken),
                                  image: AssetImage(mekan_catlakkahve),
                                  fit: BoxFit.cover)),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 36.0, left: 6.0, right: 6.0, bottom: 6.0),
                            child: ExpansionTile(
                              collapsedIconColor: Colors.amber,
                              iconColor: Colors.amber,
                              title: Text(
                                '??ATLAK KAHVE',
                                style: GoogleFonts.spartan(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        height: 1.9)),
                              ),
                              children: <Widget>[
                                Text(
                                  '??ilemizin en de??erli k??lt??rel miras?? ??ile Bezi???nin y??llard??r ilmek ilmek dokunan motiflerinden olan ??atlak Kahve???den ad??n?? alan ??atlak Kahve, ??ile Marina b??lgesinde spor alanlar??yla i?? i??e, yaz- k???? hizmet vermektedir.Gecesi ayr?? g??nd??z?? ayr?? g??zel olan, kahve, s??cak i??ecek ve enerji deposu taze s??k??m meyve sular??ndan olu??an i??ecek men??s??yle ve  ayr??ca haz??rlanan aperatiflerle ailenizle ve sevdiklerinizle g??zel vakit ge??irebilece??iniz ??atlak Kahve siz de??erli misafirlerini bekliyor.',
                                  style: GoogleFonts.spartan(
                                      textStyle: TextStyle(
                                          color: Colors.lime,
                                          fontWeight: FontWeight.w400,
                                          height: 1.9)),
                                ),
                                TextButton(
                                  onPressed: () {
                                    _launchMap(map_catlakkahve);
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
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Card(
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.55),
                                      BlendMode.darken),
                                  image: AssetImage(mekan_iskorpit),
                                  fit: BoxFit.cover)),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 36.0, left: 6.0, right: 6.0, bottom: 6.0),
                            child: ExpansionTile(
                              collapsedIconColor: Colors.amber,
                              iconColor: Colors.amber,
                              title: Text(
                                '??SKORP??T',
                                style: GoogleFonts.spartan(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        height: 1.9)),
                              ),
                              children: <Widget>[
                                Text(
                                  '??ile???nin en u??rak yerlerinden,  liman mevkiinde yer alan ??skorpit Bal??k Restoran?? yaz- k???? deniz mahsullerinin lezzetine ve huzurun tad??na ula??abilece??iniz alkols??z hizmet veren ilk ve tek bal??k restoran??d??r.\n\nYaz aylar??nda Karadeniz esintisi ile denizin g??zelli??ini izlerken deniz mahsullerinin e??siz lezzetlerini tadabilece??iniz restoran??m??zda k???? aylar??nda ise ????mine s??cakl??????n??n yan??nda ??ile Palamudunun tad??na var??rken ??ile manzaras?? sizlere e??lik edecektir. Grup yemeklerinin vazge??ilmez mekan?? olan ??skorpit Restoran haftai??i-haftasonu serpme sabah kahvalt??s??,  ????le yeme??i ve ak??am yemeklerinizde sizleri de??erli misafirlerini bekliyor.',
                                  style: GoogleFonts.spartan(
                                      textStyle: TextStyle(
                                          color: Colors.lime,
                                          fontWeight: FontWeight.w400,
                                          height: 1.9)),
                                ),
                                TextButton(
                                  onPressed: () {
                                    _launchMap(map_iskorpit);
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
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Card(
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.55),
                                      BlendMode.darken),
                                  image: AssetImage(mekan_camlikrest),
                                  fit: BoxFit.cover)),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 36.0, left: 6.0, right: 6.0, bottom: 6.0),
                            child: ExpansionTile(
                              collapsedIconColor: Colors.amber,
                              iconColor: Colors.amber,
                              title: Text(
                                '??AMLIK RESTORAN',
                                style: GoogleFonts.spartan(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        height: 1.9)),
                              ),
                              children: <Widget>[
                                Text(
                                  '??am a??a??lar??n??n s??sledi??i oksijen dolu 15000 m?? koru i??erisinde i??erisinde yer alan Mercank????k ??aml??k Sosyal Tesisimiz, D??nya ve T??rk mutfa????ndan ??e??itli lezzetler sunmaktad??r. Grup yemeklerinin vazge??ilmez mekan?? olan Mercank????k ??aml??k Sosyal Tesisimiz serpme sabah kahvalt??s??,  ????le yeme??i ve ak??am yemeklerinizde siz de??erli misafirlerini bekliyor.',
                                  style: GoogleFonts.spartan(
                                      textStyle: TextStyle(
                                          color: Colors.lime,
                                          fontWeight: FontWeight.w400,
                                          height: 1.9)),
                                ),
                                TextButton(
                                  onPressed: () {
                                    _launchMap(map_camlikrestoran);
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
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Card(
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.55),
                                      BlendMode.darken),
                                  image: AssetImage(mekan_kavala),
                                  fit: BoxFit.cover)),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 36.0, left: 6.0, right: 6.0, bottom: 6.0),
                            child: ExpansionTile(
                              collapsedIconColor: Colors.amber,
                              iconColor: Colors.amber,
                              title: Text(
                                'KAVALA',
                                style: GoogleFonts.spartan(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        height: 1.9)),
                              ),
                              children: <Widget>[
                                Text(
                                  'G??z al??c?? yap??s?? ve y??ksekli??i ile tarihi ??ile evlerinin ??zerinden y??kselerek Karadeniz???i ayd??nlatan ??ile Deniz Feneri???nin hemen alt??nda yer alan ??ile Kavala Gutta Coffee; taze demlenen kahveleri,??zel ??aylar??, serpme k??y kahvalt??s??, bakery ,kek ve sandvi?? ??e??itleri ile keyif alaca????n??z bir mekand??r.\n\nD??nyan??n aktif olarak g??rev yapan en b??y??k ikinci feneri, ??lkemizin ise aktif en b??y??k feneri, 160 ya????ndaki ??ile Deniz Feneri???nin yan??ba????ndaki ??ile Kavala Gutta Coffee, a????k ve kapal?? alan??, e??siz deniz manzaras??yla yaz k???? siz de??erli misafirlerini bekliyor.',
                                  style: GoogleFonts.spartan(
                                      textStyle: TextStyle(
                                          color: Colors.lime,
                                          fontWeight: FontWeight.w400,
                                          height: 1.9)),
                                ),
                                TextButton(
                                  onPressed: () {
                                    _launchMap(map_kavala);
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
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Card(
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.55),
                                      BlendMode.darken),
                                  image: AssetImage(mekan_agvagutta),
                                  fit: BoxFit.cover)),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 36.0, left: 6.0, right: 6.0, bottom: 6.0),
                            child: ExpansionTile(
                              collapsedIconColor: Colors.amber,
                              iconColor: Colors.amber,
                              title: Text(
                                'A??VA GUTTA',
                                style: GoogleFonts.spartan(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        height: 1.9)),
                              ),
                              children: <Widget>[
                                Text(
                                  'G??n bat??mlar??ndaki e??siz manzaras??yla sizi bekleyen bir mek??n daha; ??am a??a??lar??n??n e??li??inde bir fincan kahve i??mek isteyece??iniz bu ??irin A??va Gutta Kafe sizleri a????rlamaktan mutluluk duyacakt??r.',
                                  style: GoogleFonts.spartan(
                                      textStyle: TextStyle(
                                          color: Colors.lime,
                                          fontWeight: FontWeight.w400,
                                          height: 1.9)),
                                ),
                                TextButton(
                                  onPressed: () {
                                    _launchMap(map_agvagutta);
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
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
                SizedBox(
                  height: 40,
                )
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
