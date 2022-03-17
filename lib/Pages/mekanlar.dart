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
                              'Sofular Mesire Alanı',
                              style: GoogleFonts.spartan(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      height: 1.9)),
                            ),
                            children: <Widget>[
                              Text(
                                'Sofular mahallemizde yer alan ve denize kıyısı olan mesire alanımız ziyaretçilerine hem deniz ve plaj keyfi hem de aynı zamanda doğa ile iç içe dinleme imkanı sunuyor. Mesire alanımızın içerisinde bulunan otopark ve kamp meraklılarına ayrılmış bölümün yanı sıra deniz manzarası eşliği ve çam ağaçlarının gölgesinde yapacağınız piknik alanı ile unutulmaz bir gün geçireceğinizin garantisini veriyor.',
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
                            ],
                          ),
                        ),
                      ),
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
                              'Â-LÂ ŞİLE',
                              style: GoogleFonts.spartan(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      height: 1.9)),
                            ),
                            children: <Widget>[
                              Text(
                                'Eşsiz manzarası, doğal koydan oluşan plajıyla büyülü atmosferiyle Şile’nin yeni gözbebeği… Sosyal Belediyecilik çalışmaları çerçevesinde, ülke genelinde örneği olmayan bir konseptte hazırlanan A-LA Şile Kadınlar Plajı yaz aylarında saat 10.00-19.00 arası sadece kadınlarımıza hizmet vermektedir. Saat 19.00’dan sonra restoran bölümü eşsiz manzarasıyla ailelerimizi misafir ediyor.',
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
                                          "Rota oluştur  ",
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
                                          "Telefon iler rezervasyon yapın  ",
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
                              'LİMAN GUTTA',
                              style: GoogleFonts.spartan(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      height: 1.9)),
                            ),
                            children: <Widget>[
                              Text(
                                'Şile Limanında birbirinden güzel içecek ve tatlı çeşitleriyle yorgunluğunuzu unutacağınız bir mekânda dinlenmek sizin de hakkınız. Özellikle manzarasıyla Liman Gutta kafemizde size dingin bir ortam sunuyor.',
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
                            ],
                          ),
                        ),
                      ),
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
                              'ÇATLAK KAHVE',
                              style: GoogleFonts.spartan(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      height: 1.9)),
                            ),
                            children: <Widget>[
                              Text(
                                'Şilemizin en değerli kültürel mirası Şile Bezi’nin yıllardır ilmek ilmek dokunan motiflerinden olan Çatlak Kahve’den adını alan Çatlak Kahve, Şile Marina bölgesinde spor alanlarıyla iç içe, yaz- kış hizmet vermektedir.Gecesi ayrı gündüzü ayrı güzel olan, kahve, sıcak içecek ve enerji deposu taze sıkım meyve sularından oluşan içecek menüsüyle ve  ayrıca hazırlanan aperatiflerle ailenizle ve sevdiklerinizle güzel vakit geçirebileceğiniz Çatlak Kahve siz değerli misafirlerini bekliyor.',
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
                            ],
                          ),
                        ),
                      ),
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
                              'İSKORPİT',
                              style: GoogleFonts.spartan(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      height: 1.9)),
                            ),
                            children: <Widget>[
                              Text(
                                'Şile’nin en uğrak yerlerinden,  liman mevkiinde yer alan İskorpit Balık Restoranı yaz- kış deniz mahsullerinin lezzetine ve huzurun tadına ulaşabileceğiniz alkolsüz hizmet veren ilk ve tek balık restoranıdır.\n\nYaz aylarında Karadeniz esintisi ile denizin güzelliğini izlerken deniz mahsullerinin eşsiz lezzetlerini tadabileceğiniz restoranımızda kış aylarında ise şömine sıcaklığının yanında Şile Palamudunun tadına varırken Şile manzarası sizlere eşlik edecektir. Grup yemeklerinin vazgeçilmez mekanı olan İskorpit Restoran haftaiçi-haftasonu serpme sabah kahvaltısı,  öğle yemeği ve akşam yemeklerinizde sizleri değerli misafirlerini bekliyor.',
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
                            ],
                          ),
                        ),
                      ),
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
                              'ÇAMLIK RESTORAN',
                              style: GoogleFonts.spartan(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      height: 1.9)),
                            ),
                            children: <Widget>[
                              Text(
                                'Çam ağaçlarının süslediği oksijen dolu 15000 m² koru içerisinde içerisinde yer alan Mercanköşk Çamlık Sosyal Tesisimiz, Dünya ve Türk mutfağından çeşitli lezzetler sunmaktadır. Grup yemeklerinin vazgeçilmez mekanı olan Mercanköşk Çamlık Sosyal Tesisimiz serpme sabah kahvaltısı,  öğle yemeği ve akşam yemeklerinizde siz değerli misafirlerini bekliyor.',
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
                            ],
                          ),
                        ),
                      ),
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
                                'Göz alıcı yapısı ve yüksekliği ile tarihi Şile evlerinin üzerinden yükselerek Karadeniz’i aydınlatan Şile Deniz Feneri’nin hemen altında yer alan Şile Kavala Gutta Coffee; taze demlenen kahveleri,özel çayları, serpme köy kahvaltısı, bakery ,kek ve sandviç çeşitleri ile keyif alacağınız bir mekandır.\n\nDünyanın aktif olarak görev yapan en büyük ikinci feneri, ülkemizin ise aktif en büyük feneri, 160 yaşındaki Şile Deniz Feneri’nin yanıbaşındaki Şile Kavala Gutta Coffee, açık ve kapalı alanı, eşsiz deniz manzarasıyla yaz kış siz değerli misafirlerini bekliyor.',
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
                            ],
                          ),
                        ),
                      ),
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
                              'AĞVA GUTTA',
                              style: GoogleFonts.spartan(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      height: 1.9)),
                            ),
                            children: <Widget>[
                              Text(
                                'Gün batımlarındaki eşsiz manzarasıyla sizi bekleyen bir mekân daha; çam ağaçlarının eşliğinde bir fincan kahve içmek isteyeceğiniz bu şirin Ağva Gutta Kafe sizleri ağırlamaktan mutluluk duyacaktır.',
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
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
