import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sile/Pages/credits.dart';
import 'package:sile/Pages/gastro.dart';
import 'package:sile/Pages/history.dart';
import 'package:sile/Pages/main_screen.dart';
import 'package:sile/Pages/mekanlar.dart';
import 'package:sile/Pages/plajlar.dart';
import 'package:sile/Pages/rehber.dart';

import 'package:sile/Pages/treasure.dart';
import 'package:sile/config.dart';
import '/Pages/main_screen.dart';
import 'package:flutter/services.dart';
import 'package:weather/weather.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'dart:io';
import 'package:flutter_spinkit/flutter_spinkit.dart';

enum AppState { NOT_DOWNLOADED, DOWNLOADING, FINISHED_DOWNLOADING }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: '/', //  Ana sayfa, başlangıç rotası
      routes: {
        '/': (context) => Sayfa1(),
        '/sayfa4': (context) => MainScreen(),
        '/mekanlar': (context) => Mekanlar(),
        '/plajlar': (context) => Plajlar(),
        '/treasure': (context) => Treasure(),
        '/history': (context) => History(),
        '/gastro': (context) => Gastro(),
        '/rehber': (context) => Rehber(),
        '/credits': (context) => Credits()
      },
    ),
  );
}

final key1 = new GlobalKey<_Sayfa1State>();
final key2 = new GlobalKey<_Sayfa1State>();

class Sayfa1 extends StatefulWidget {
  Sayfa1({Key? key}) : super(key: key);

  @override
  State<Sayfa1> createState() => _Sayfa1State();
}

class _Sayfa1State extends State<Sayfa1> {
  String keyx = 'ef3771465f52638a074b38799c1aab08';
  late WeatherFactory ws;
  List<Weather> _data = [];
  List<Weather> fdata = [];
  AppState _state = AppState.NOT_DOWNLOADED;
  double lat = lat1;
  double lon = lon1;
  bool get_weather = false;

  void get_qw() {
    queryWeather();
  }

  String get_qw_s() {
    get_qw();
    get_weather = true;
    return wdata.toString();
  }

  void get_fw() {
    queryForecast();
  }

  @override
  void initState() {
    super.initState();
    ws = new WeatherFactory(keyx, language: Language.TURKISH);
  }

  void queryForecast() async {
    /// Removes keyboard
    FocusScope.of(context).requestFocus(FocusNode());
    setState(() {
      _state = AppState.DOWNLOADING;
    });

    List<Weather> forecasts = await ws.fiveDayForecastByLocation(lat, lon);
    setState(() {
      fdata = forecasts;
      _state = AppState.FINISHED_DOWNLOADING;
      wfdata = fdata;
      //print(wfdata.length.toString() + " kaan");
      //print(wfdata[1].toString() + " kaan");
    });
  }

  void queryWeather() async {
    /// Removes keyboard
    FocusScope.of(context).requestFocus(FocusNode());

    setState(() {
      _state = AppState.DOWNLOADING;
    });
    Weather weather = await ws.currentWeatherByLocation(lat, lon);
    setState(() {
      _data = [weather];
      _state = AppState.FINISHED_DOWNLOADING;
      wdata = _data;
      ww = weather;
      weathericon = weather.weatherIcon!;
      fullicon = weathericon1 + weathericon + weathericon2;
      dakika = weather.date!.minute;

      //print(wdata.length.toString() + " kaan");
      //print(weather.weatherDescription);
      //print(wdata[0].toString() + " kaan");
      //print(_data[0].toString() + " kaan1");
    });
  }

  Widget contentFinishedDownload() {
    return Center(
      child: ListView.separated(
        itemCount: _data.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_data[index].toString()),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }

  Widget contentDownloading() {
    return Container(
      margin: EdgeInsets.all(25),
      child: Column(children: [
        Text(
          'Fetching Weather...',
          style: TextStyle(fontSize: 20),
        ),
        Container(
            margin: EdgeInsets.only(top: 50),
            child: Center(child: CircularProgressIndicator(strokeWidth: 10)))
      ]),
    );
  }

  Widget contentNotDownloaded() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Press the button to download the Weather forecast',
          ),
        ],
      ),
    );
  }

  Widget _resultView() => _state == AppState.FINISHED_DOWNLOADING
      ? contentFinishedDownload()
      : _state == AppState.DOWNLOADING
          ? contentDownloading()
          : contentNotDownloaded();

  void _saveLat(String input) {
    lat = lat1;
    //print(lat);
  }

  void _saveLon(String input) {
    lon = lon1;
    //print(lon);
  }

  Widget _coordinateInputs() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
              margin: EdgeInsets.all(5),
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Enter latitude'),
                  keyboardType: TextInputType.number,
                  onChanged: _saveLat,
                  onSubmitted: _saveLat)),
        ),
        Expanded(
            child: Container(
                margin: EdgeInsets.all(5),
                child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter longitude'),
                    keyboardType: TextInputType.number,
                    onChanged: _saveLon,
                    onSubmitted: _saveLon)))
      ],
    );
  }

  Widget _buttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(5),
          child: TextButton(
            child: Text(
              'Fetch weather',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: queryWeather,
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue)),
          ),
        ),
        Container(
          margin: EdgeInsets.all(5),
          child: TextButton(
            child: Text(
              'Fetch forecast',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: queryForecast,
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue)),
          ),
        )
      ],
    );
  }

  void chk() async {
    final bool isConnected = await InternetConnectionChecker().hasConnection;
    if (isConnected) {
      setState(() {
        isInt = true;
      });
    } else {
      setState(() {
        isInt = false;
      });
    }
  }

  String get_it() {
    chk();
    sleep(Duration(milliseconds: 50));
    if (isInt) {
      setState(() {});
      get_qw_s();
    } else {
      isInt = false;
      setState(() {});
    }
    return isInt.toString();
  }

  @override
  Widget build(BuildContext context) {
    chk();

    return Scaffold(
      body: isInt == false
          ? Scaffold(
              body: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.5), BlendMode.darken),
                        image: AssetImage(bez),
                        fit: BoxFit.cover)),
                child: Stack(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: SpinKitSpinningLines(
                        color: Colors.yellow,
                        size: 120,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        margin: EdgeInsets.only(top: 15, right: 5, left: 5),
                        child: Material(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black.withOpacity(0.75),
                          child: Padding(
                            padding: const EdgeInsets.all(30),
                            child: Container(
                              child: Text(
                                "İnternet Erişimi Bekleniyor",
                                style: GoogleFonts.spartan(
                                    color: Colors.white70, fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          : GestureDetector(
              //onVerticalDragUpdate: ((details) =>Navigator.pushNamed(context, '/sayfa4')),
              child: Stack(children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.45), BlendMode.darken),
                          image: AssetImage(plaj_ayazma),
                          fit: BoxFit.cover)),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        //height: MediaQuery.of(context).size.height / 25,
                        height: 30,
                      ),
                      Material(
                        elevation: 25,
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(72),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 75.0,
                          child: ClipRRect(
                            child: Image.asset('assets/main/silelogo1.png'),
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                        ),
                      ), //'assets/main/silelogo1.png'

                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     TextButton(
                      //         key: key1,
                      //         onPressed: () {
                      //           //queryForecast();
                      //           queryWeather();
                      //         },
                      //         child: Text(
                      //           "Hava",
                      //           style: GoogleFonts.spartan(
                      //               color: Colors.white, fontSize: 35),
                      //         )),
                      //     TextButton(
                      //         key: key2,
                      //         onPressed: () {
                      //           queryForecast();
                      //           //queryWeather();
                      //         },
                      //         child: Text(
                      //           "Durumu",
                      //           style: GoogleFonts.spartan(
                      //               color: Colors.white, fontSize: 35),
                      //         )),
                      //   ],
                      // ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 5, left: 5),
                          child: Material(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey.withOpacity(0.25),
                            child: Container(
                              //width: MediaQuery.of(context).size.width - 10,
                              //height: 120,
                              child: get_weather
                                  ? Stack(children: [
                                      Column(
                                          //mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            weathericon == null
                                                ? Text(
                                                    "Lütfen İnternet Bağlantısı Sağlayın!")
                                                : CircleAvatar(
                                                    radius: 75,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    backgroundImage:
                                                        NetworkImage(fullicon),
                                                  ),
                                            Text(
                                                ww?.weatherDescription
                                                        ?.toUpperCase() ??
                                                    " Yükleniyor... ",
                                                style: GoogleFonts.spartan(
                                                    color: Colors.white70,
                                                    fontSize: 20)),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                    ww?.temperature?.celsius
                                                            .toString()
                                                            .substring(0, 3) ??
                                                        " Yükleniyor... ",
                                                    style: GoogleFonts.spartan(
                                                      color: Colors.white70,
                                                    )),
                                                Text("°C Derece",
                                                    style: GoogleFonts.spartan(
                                                      color: Colors.white70,
                                                    )),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text("Hissedilen : ",
                                                    style: GoogleFonts.spartan(
                                                      color: Colors.white70,
                                                    )),
                                                Text(
                                                    ww?.tempFeelsLike?.celsius
                                                            ?.toString()
                                                            .substring(0, 4) ??
                                                        " Yükleniyor... ",
                                                    style: GoogleFonts.spartan(
                                                      color: Colors.white70,
                                                    )),
                                                Text("°C Derece",
                                                    style: GoogleFonts.spartan(
                                                      color: Colors.white70,
                                                    )),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text("Nem : %",
                                                    style: GoogleFonts.spartan(
                                                      color: Colors.white70,
                                                    )),
                                                Text(
                                                    ww?.humidity.toString() ??
                                                        " Yükleniyor... ",
                                                    style: GoogleFonts.spartan(
                                                      color: Colors.white70,
                                                    )),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            time.month > 5 &&
                                                    time.month < 9 &&
                                                    ww!.tempFeelsLike!
                                                            .celsius! >
                                                        25 &&
                                                    time.hour > 6 &&
                                                    time.hour < 20
                                                ? Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                          Icons
                                                              .check_circle_outline_outlined,
                                                          color: Colors.green),
                                                      Text(
                                                        "Denize Girilebilir",
                                                        style:
                                                            GoogleFonts.spartan(
                                                                color: Colors
                                                                    .green,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                      ),
                                                      Icon(
                                                          Icons
                                                              .check_circle_outline_outlined,
                                                          color: Colors.green),
                                                    ],
                                                  )
                                                : Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                          Icons
                                                              .do_not_disturb_on_outlined,
                                                          color: Colors.red),
                                                      Text(
                                                        "Denize Girilmesi Tavsiye Edilmez",
                                                        style:
                                                            GoogleFonts.spartan(
                                                                color:
                                                                    Colors.red,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                      ),
                                                      Icon(
                                                          Icons
                                                              .do_not_disturb_on_outlined,
                                                          color: Colors.red),
                                                    ],
                                                  ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            FloatingActionButton(
                                              heroTag: "btn1",
                                              foregroundColor: Colors.black,
                                              backgroundColor: Colors.white54,
                                              splashColor: Colors.green,
                                              elevation: 11,
                                              onPressed: () {
                                                Navigator.of(context)
                                                    .pushNamed('/sayfa4');
                                              },
                                              child: Icon(Icons
                                                  .arrow_forward_ios_rounded),
                                            )
                                          ]),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: IconButton(
                                            onPressed: () {
                                              get_it();
                                            },
                                            icon: Icon(
                                                Icons
                                                    .replay_circle_filled_sharp,
                                                color: Colors.black)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(15),
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Row(children: [
                                            Text(
                                                ww?.date?.hour.toString() ??
                                                    " Yükleniyor...",
                                                style: GoogleFonts.spartan(
                                                    color: Colors.white70,
                                                    fontSize: 20)),
                                            Text(":",
                                                style: GoogleFonts.spartan(
                                                    color: Colors.white70,
                                                    fontSize: 20)),
                                            // ww!.date!.minute! < 10
                                            //     ? Text("0",
                                            //         style: GoogleFonts.spartan(
                                            //             color: Colors.white70,
                                            //             fontSize: 20))
                                            //     : Text(""),

                                            dakika < 10
                                                ? Text("0",
                                                    style: GoogleFonts.spartan(
                                                        color: Colors.white70,
                                                        fontSize: 20))
                                                : Text(""),
                                            Text(
                                                ww?.date?.minute.toString() ??
                                                    " ",
                                                style: GoogleFonts.spartan(
                                                    color: Colors.white70,
                                                    fontSize: 20)),
                                            Text("  son güncelleme",
                                                style: GoogleFonts.spartan(
                                                    color: Colors.white60,
                                                    fontSize: 13))
                                          ]),
                                        ),
                                      ),
                                    ])
                                  : Text(get_qw_s()),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "",
                        style: GoogleFonts.spartan(color: sile_kirmizisi),
                      ),
                      //Expanded(child: SizedBox())
                    ],
                  ),
                ),
              ]),
            ),
    );
  }
}
