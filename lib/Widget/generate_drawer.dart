import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sile/config.dart';
import 'package:sile/main.dart';
//import '../main.dart';
import '../Pages/launch_function.dart';
import 'package:weather/weather.dart';

void get_weather() {}

Widget generate_list(BuildContext tur) {
  return ClipRRect(
    borderRadius: BorderRadius.only(
        topRight: Radius.circular(25), bottomRight: Radius.circular(25)),
    child: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/main/silegenis3.jpg'),
              fit: BoxFit.fitHeight,
              opacity: 1)),
      child: Drawer(
        //backgroundColor: Colors.transparent.withOpacity(0.5),
        backgroundColor: Colors.grey[800],
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 4,
            ),
            DrawerHeader(
              child: Align(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  //mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    //Icon(Icons.directions_car,color: Colors.white,size: 100.0,),
                    Expanded(
                      child: Material(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blueAccent.withOpacity(0.5),
                        child: Padding(
                          padding: const EdgeInsets.all(0),
                          child: Container(
                            height: 75,
                            //width: MediaQuery.of(tur).size.width * 0.75 - 50,
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 35,
                                  backgroundColor: Colors.transparent,
                                  backgroundImage: NetworkImage(fullicon),
                                ),
                                Text(
                                    ww?.weatherDescription?.toUpperCase() ??
                                        "Lütfen İnternet Bağlantısı Sağlayın",
                                    style: GoogleFonts.spartan(
                                        color: Colors.white)),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                        ww?.temperature?.celsius
                                                .toString()
                                                .substring(0, 3) ??
                                            "",
                                        style: GoogleFonts.spartan(
                                          color: Colors.white70,
                                        )),
                                    Text("°C Derece",
                                        style: GoogleFonts.spartan(
                                          color: Colors.white70,
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //decoration: BoxDecoration(color: Colors.indigo[900],),
            ),
            Material(
              elevation: 8,
              borderRadius: BorderRadius.all(Radius.circular(25)),
              color: Colors.grey.withOpacity(0.70),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                ),
                title: Text(
                  'Anasayfa',
                  style: GoogleFonts.spartan(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_right,
                ),
                onTap: () {
                  Navigator.pushNamed(tur, "/sayfa4");
                },
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Material(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              color: Colors.grey.withOpacity(0.70),
              child: ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text(
                  'Detaylı Hava Durumu',
                  style: GoogleFonts.spartan(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  launchMap(
                      "https://www.mgm.gov.tr/tahmin/il-ve-ilceler.aspx?il=%C4%B0stanbul&ilce=%C5%9Eile");
                },
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Material(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              color: Colors.grey.withOpacity(0.70),
              child: ListTile(
                leading: Icon(Icons.travel_explore_rounded),
                title: Text(
                  'Şile\'ye Rota Oluştur',
                  style: GoogleFonts.spartan(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  launchMap(
                      "https://www.google.com/maps/place/%C5%9Eile,+%C4%B0stanbul/@41.0688127,29.0491668,11z/data=!4m5!3m4!1s0x409e326728811181:0x8c46d42b62837f50!8m2!3d41.174903!4d29.609588");
                },
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Material(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              color: Colors.grey.withOpacity(0.70),
              child: ExpansionTile(
                //initiallyExpanded: true,
                leading: Icon(Icons.perm_contact_calendar_rounded),
                title: Text(
                  'İletişim',
                  style: GoogleFonts.spartan(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                trailing: Icon(Icons.arrow_drop_down),
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Çağrı Merkezi',
                      style: GoogleFonts.spartan(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {
                      launchMap('tel:4447453');
                    },
                  ),
                  ListTile(
                    title: Text(
                      'Beyaz Masa E-Posta',
                      style: GoogleFonts.spartan(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {
                      launchMap("mailto:beyazmasa@sile.bel.tr");
                    },
                  ),
                  ListTile(
                    title: Text(
                      'E-Posta',
                      style: GoogleFonts.spartan(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {
                      launchMap("mailto:bilgi@sile.bel.tr");
                    },
                  ),
                  ListTile(
                    title: Text(
                      'Şile Belediye Başkanlığı',
                      style: GoogleFonts.spartan(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {
                      launchMap(
                          "https://www.google.com/maps?ll=41.17753,29.61105&z=19&t=m&hl=tr&gl=US&mapclient=embed&cid=16794525993380046587");
                    },
                  ),
                  ListTile(
                    title: Text(
                      'Şile Belediyesi İmar Müdürlüğü Ek Hizmet Binası',
                      style: GoogleFonts.spartan(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {
                      launchMap(
                          "https://www.google.com/maps?ll=41.178422,29.611684&z=20&t=m&hl=tr&gl=US&mapclient=embed&q=%C3%9Csk%C3%BCdar+Cd.+No:5+Hac%C4%B1+Kas%C4%B1m+34980+%C5%9Eile/%C4%B0stanbul");
                    },
                  ),
                  ListTile(
                    title: Text(
                      'Şile Belediyesi Teknik Birimler Ek Hizmet Binası',
                      style: GoogleFonts.spartan(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {
                      launchMap(
                          "https://www.google.com/maps?ll=41.154202,29.636647&z=17&t=m&hl=tr&gl=US&mapclient=embed&cid=6977466509815071388");
                    },
                  ),
                  ListTile(
                    title: Text(
                      'Şile Belediyesi Kültür ve Sosyal İşler Müdürlüğü Ek Hizmet Binası',
                      style: GoogleFonts.spartan(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {
                      launchMap(
                          "https://www.google.com/maps?ll=41.15568,29.588582&z=16&t=m&hl=tr&gl=US&mapclient=embed&cid=7818791933608659523");
                    },
                  ),
                  ListTile(
                    title: Text(
                      'Şile Belediyesi Veteriner İşleri Müdürlüğü Ek Hizmet Binası',
                      style: GoogleFonts.spartan(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {
                      launchMap(
                          "https://www.google.com/maps?ll=41.162983,29.592801&z=19&t=m&hl=tr&gl=US&mapclient=embed&q=%C4%B0mrendere+Cd.+No:7+%C3%87avu%C5%9F+34980+%C5%9Eile/%C4%B0stanbul");
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Material(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              color: Colors.grey.withOpacity(0.70),
              child: ListTile(
                leading: Icon(Icons.info_outline_rounded),
                title: Text(
                  'Hakkında',
                  style: GoogleFonts.spartan(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.of(tur).pushNamed('/credits');
                },
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Material(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              color: Colors.red.withOpacity(0.35),
              child: ListTile(
                leading: Icon(Icons.bug_report_rounded),
                title: Text(
                  'Sorun Bildir',
                  style: GoogleFonts.spartan(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  launchMap(
                      "mailto:kaandonmeztf@gmail.com?subject=Sorun%20Bildir&body=" +
                          MediaQuery.of(tur).displayFeatures.toString());
                },
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Uygulama sürümü: 1.00",
                  style: GoogleFonts.spartan(
                      fontWeight: FontWeight.bold,
                      color: Colors.amber.withOpacity(0.15)),
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}
