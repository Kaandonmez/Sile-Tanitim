import 'package:flutter/material.dart';

import 'package:weather/weather.dart';
import 'package:intl/intl.dart';

//treasure için total page değeri
int totalPage = 9;

//history için totalpage değeri
int totalHistoryPage = 8;

Weather? ww;

String weathericon = "";
String weathericon1 = "http://openweathermap.org/img/wn/";
String weathericon2 = "@2x.png";
String fullicon = "";
double lat1 = 41.17738902640936;
double lon1 = 29.610958820726804;
List<Weather> wdata = [];
List<Weather> wfdata = [];
double temp = 0;

DateTime time = DateTime.now();
bool canSwim = false;

Color sile_mavisi = Color.fromRGBO(12, 50, 124, 1);
Color sile_sarisi = Color.fromRGBO(233, 159, 8, 1);
Color sile_kirmizisi = Color.fromRGBO(203, 14, 1, 1);
Color sile_yesili = Color.fromRGBO(28, 104, 16, 1);

Color sile_mavisi_comp = Color.fromRGBO(124, 87, 12, 1);
Color sile_sarisi_comp = Color.fromRGBO(8, 83, 233, 1);
Color sile_kirmizisi_comp = Color.fromRGBO(8, 83, 233, 1);
Color sile_yesili_comp = Color.fromRGBO(92, 16, 104, 1);

String logo_buyuk = 'assets/main/silelogo.jpg';
String drawer_bgimage = 'assets/main/silegenis.jpg';
String main_arkaplan = 'assets/main/silefener.jpg';
String yemek_foto = 'assets/main/yemek1.jpg';
String rehber_foto = 'assets/main/rehber.jpg';
String tarih_foto = 'assets/main/tarih.jpg';

String mekan_agvagutta = 'assets/mekanlar/agvagutta.jpg';
String mekan_alasile = 'assets/mekanlar/alasile.jpg';
String mekan_camlikrest = 'assets/mekanlar/camlikrest.jpg';
String mekan_catlakkahve = 'assets/mekanlar/catlakkahve.jpg';
String mekan_iskorpit = 'assets/mekanlar/iskorpit.jpg';
String mekan_kavala = 'assets/mekanlar/kavala.jpg';
String mekan_limangutta = 'assets/mekanlar/limangutta.jpg';
String mekan_sofularmesire = 'assets/mekanlar/sofularmesire.jpg';

String plaj_kumbaba = 'assets/plajlar/kumbaba.jpg';
String plaj_akcakese = 'assets/plajlar/akcakese.jpg';
String plaj_aglayankaya = 'assets/plajlar/aglayankaya.jpg';
String plaj_agva = 'assets/plajlar/agva.jpg';
String plaj_ayazma = 'assets/plajlar/ayazma.jpg';
String plaj_imrenli = 'assets/plajlar/imrenli.jpg';
String plaj_kabakoz = 'assets/plajlar/kabakoz.jpg';
String plaj_uzunkum = 'assets/plajlar/uzunkum.jpg';

String agva = 'assets/treasure/main/agva.jpg';
String agvakadirga = 'assets/treasure/main/agvakadirga.jpg';
String agvakilimli = 'assets/treasure/main/agvakilimli.jpg';
String borukaya = 'assets/treasure/main/borukaya.jpg';
String flora = 'assets/treasure/main/flora.jpg';
String hacililiselale = 'assets/treasure/main/hacililiselale.jpg';
String mesrutiyetmagra = 'assets/treasure/main/mesrutiyetmagra.jpg';
String sofularmagra = 'assets/treasure/main/sofularmagra.jpg';
String zekimurenmagra = 'assets/treasure/main/zekimurenmagra.jpg';
String sile2 = 'assets/treasure/main/sile2.jpg';
String sile3 = 'assets/treasure/main/sile3.jpg';

String heciz = 'assets/history/heciz.jpg';
String kayikhane = 'assets/history/kayikhane.jpg';
String kumbaba_motel = 'assets/history/kumbaba_motel.jpg';
String sarikavak = 'assets/history/sarikavak.jpg';
String sile_feneri = 'assets/history/sile_feneri.jpg';
String sile_kalesi = 'assets/history/sile_kalesi.jpg';
String vaftizhane = 'assets/history/vaftizhane.jpg';
String cadde = 'assets/history/cadde.jpg';

String bal = 'assets/gastro/bal.jpg';
String balik = 'assets/gastro/balik.jpg';
String ekmek = 'assets/gastro/ekmek.jpg';
String gastro = 'assets/gastro/gastro.jpg';

String bez = 'assets/rehber/bez.jpg';
String elsanat = 'assets/rehber/elsanat.jpg';
String koyler = 'assets/rehber/koyler.jpg';
String liman = 'assets/rehber/liman.jpg';
String pazar = 'assets/rehber/pazar.jpg';

String map_sofular =
    "https://www.google.com/maps/place/Sofular+k%C3%B6y%C3%BC+halk+plaj%C4%B1+mesire+yeri/@41.1849578,29.4871642,18z/data=!3m1!4b1!4m5!3m4!1s0x409fd278405a5f51:0x9f5ed9a6e45dd1bc!8m2!3d41.1849558!4d29.4882585";
String map_alasile =
    "https://www.google.com/maps/place/%C5%9Eile+Ala+Kad%C4%B1nlar+Plaj%C4%B1/@41.1737032,29.6298708,19z/data=!3m1!4b1!4m12!1m6!3m5!1s0x409e33b1288e83f3:0xec76cca0557982d6!2zxZ5pbGUgQWxhIEthZMSxbmxhciBQbGFqxLE!8m2!3d41.1737022!4d29.630992!3m4!1s0x409e33b1288e83f3:0xec76cca0557982d6!8m2!3d41.1737022!4d29.630992";
String tel_alasile = 'tel:05549689192';
String url_alasile = "https://www.instagram.com/ala.sile/";
String map_limagutta =
    "https://www.google.com/maps/place/Coffee+Gutta+Liman/@41.1807145,29.608027,21z/data=!4m5!3m4!1s0x409e32fa7fc6e80b:0x56fa513787af410f!8m2!3d41.180618!4d29.6081029";
String map_catlakkahve =
    "https://www.google.com/maps/place/%C3%87atlak+KAHVE/@41.1767441,29.6075126,18.75z/data=!4m5!3m4!1s0x409e331585950331:0x8ec8079068aed606!8m2!3d41.1766986!4d29.6079786";
String map_iskorpit =
    "https://www.google.com/maps/place/%C4%B0skorpit+Restoran/@41.181368,29.6046623,17z/data=!3m1!4b1!4m5!3m4!1s0x409e32fa800d3d4f:0x6d6a92e8feca8c24!8m2!3d41.181364!4d29.606851";
String map_camlikrestoran =
    "https://www.google.com/maps/place/%C3%87aml%C4%B1k+Mercan+K%C3%B6%C5%9Fk+Restoran/@41.171347,29.6120023,17z/data=!3m1!4b1!4m5!3m4!1s0x409e325e3fbe0ef5:0xb5625b8f6ecf39d6!8m2!3d41.171343!4d29.614191";
String map_kavala =
    "https://www.google.com/maps/place/Kavala+Park%C4%B1/@41.177703,29.6138813,17z/data=!3m1!4b1!4m5!3m4!1s0x409e3258080023db:0xf225bd5f544f3333!8m2!3d41.177699!4d29.61607";
String map_agvagutta =
    "https://www.google.com/maps/place/Coffee+Gutta/@41.1370736,29.8473285,17z/data=!3m1!4b1!4m5!3m4!1s0x409e3bfbf405dcc5:0xe6019db7c2afe0fa!8m2!3d41.1371716!4d29.8494896";
String map_kumbaba =
    "https://www.google.com/maps/place/Kumbaba+Plaj%C4%B1/@41.1653572,29.571209,16.25z/data=!4m5!3m4!1s0x409e32a2799aff53:0xcbdbb09323748af7!8m2!3d41.1684916!4d29.5745824";
String map_akcakese =
    "https://www.google.com/maps/place/Ak%C3%A7akese+Plaji/@41.1547926,29.7309921,610m/data=!3m1!1e3!4m13!1m7!3m6!1s0x409e30f7d1eed7f7:0xaf74b40b00712be2!2sAk%C3%A7akese+Plaji!3b1!8m2!3d41.1551152!4d29.7324036!3m4!1s0x409e30f7d1eed7f7:0xaf74b40b00712be2!8m2!3d41.1551152!4d29.7324036";
String map_aglayankaya =
    "https://www.google.com/maps/place/A%C4%9Flayankaya+Beach+%C5%9Eile/@41.1753032,29.6240315,257m/data=!3m1!1e3!4m5!3m4!1s0x409e325a6e53e345:0x27d676a0da280d58!8m2!3d41.1754309!4d29.6239342";
String map_agvaplaji =
    "https://www.google.com/maps/place/A%C4%9Fva+Plaj%C4%B1/@41.1368187,29.84707,1727m/data=!3m1!1e3!4m5!3m4!1s0x409e3b957da7bda5:0xae1b9813ac02937a!8m2!3d41.1382229!4d29.8488085";
String map_ayazma =
    "https://www.google.com/maps/place/Ayazma+Plaj%C4%B1+%C5%9Eile/@41.1707565,29.5951067,1026m/data=!3m1!1e3!4m5!3m4!1s0x409e328db148d39b:0xefb1c727384f4810!8m2!3d41.1711612!4d29.5967144";
String map_imrenli =
    "https://www.google.com/maps/place/Imrenli+K%C3%B6y+Plaji/@41.1571919,29.746467,3453m/data=!3m2!1e3!4b1!4m5!3m4!1s0x409e308e03ea39ad:0x136f39a2fb6cb8b3!8m2!3d41.1571766!4d29.7552218";
String map_kabakoz =
    "https://www.google.com/maps/place/Kabakoz+K%C3%B6y%C3%BC+Plaji/@41.159025,29.6981956,3453m/data=!3m2!1e3!4b1!4m5!3m4!1s0x409e31a9030b82d3:0x67ec65b97f1decfe!8m2!3d41.1590097!4d29.7069504";
String map_uzunkum =
    "https://www.google.com/maps/place/Uzunkum+Plaj%C4%B1/@41.1706423,29.627724,3452m/data=!3m2!1e3!4b1!4m5!3m4!1s0x409e3247a4c8e9f3:0x60bd4be767d49eed!8m2!3d41.170627!4d29.6364788";

String map_zekimuren =
    "https://www.google.com/maps/place/%C5%9Eile+Feneri/@41.1777701,29.6162226,391m/data=!3m2!1e3!4b1!4m5!3m4!1s0x409e32f7fd34ffeb:0x2063bc80dc37d017!8m2!3d41.1777701!4d29.6162226";
String map_treasofular =
    "https://www.google.com/maps/place/Sofular,+34983+%C5%9Eile%2F%C4%B0stanbul/@41.173707,29.491657,1562m/data=!3m2!1e3!4b1!4m5!3m4!1s0x409fd2893b606e37:0xe936d9844784cbd8!8m2!3d41.1725!4d29.493";
String map_mesrutiyet =
    "https://www.google.com/maps/place/Me%C5%9Frutiyet,+34983+%C5%9Eile%2F%C4%B0stanbul/@41.1609252,29.5409542,5257m/data=!3m1!1e3!4m5!3m4!1s0x409e2d5dafda9fd7:0xb66677eb881a3ab4!8m2!3d41.157416!4d29.5661525";
String map_hacilli =
    "https://www.google.com/maps/place/Hac%C4%B1ll%C4%B1,+34983+%C5%9Eile%2F%C4%B0stanbul/@41.0440693,29.7608622,1566m/data=!3m2!1e3!4b1!4m5!3m4!1s0x409e240a29c48a37:0xcb12f669f1e71744!8m2!3d41.0466!4d29.7697";
String map_tresagva =
    "https://www.google.com/maps/place/A%C4%9Fva+Merkez,+%C5%9Eile%2F%C4%B0stanbul/@41.134819,29.8328099,3127m/data=!3m2!1e3!4b1!4m5!3m4!1s0x409e3b912a657dd1:0xea8610dc332974b2!8m2!3d41.138653!4d29.856061";
String map_kilimli =
    "https://www.google.com/maps/place/Kilimli+Koyu+Trekking+Parkuru/@41.141307,29.8689274,391m/data=!3m2!1e3!4b1!4m5!3m4!1s0x409e3bf1ccc3f053:0x423ecc8ddcb5ec25!8m2!3d41.141307!4d29.8689274";
String map_kadirga =
    "https://www.google.com/maps/place/A%C4%9Fva+Kilimli+Koyu/@41.141995,29.8704968,391m/data=!3m2!1e3!4b1!4m5!3m4!1s0x409e3bf088bc8283:0x4cd480de847530d8!8m2!3d41.141991!4d29.8726855";
String map_boru =
    "https://www.google.com/maps/place/Do%C4%9Fanc%C4%B1l%C4%B1,+34983+%C5%9Eile%2F%C4%B0stanbul/@41.1931813,29.4260525,3124m/data=!3m1!1e3!4m5!3m4!1s0x409fd1f91c9ba35d:0x5f8af44256398192!8m2!3d41.1923!4d29.4436";
String map_sile =
    "https://www.google.com/maps/place/%C5%9Eile,+%C4%B0stanbul/@41.1673271,29.5719246,5256m/data=!3m1!1e3!4m5!3m4!1s0x409e326728811181:0x8c46d42b62837f50!8m2!3d41.174903!4d29.609588";
