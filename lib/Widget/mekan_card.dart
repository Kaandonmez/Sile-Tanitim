import 'package:flutter/material.dart';
import 'package:sile/config.dart';

Widget build_mekan_card(BuildContext context, String assetimage,
    Widget? widget1, Widget? widget2, Color? color_card) {
  return Card(
    color: Colors.transparent,
    child: Container(
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.55), BlendMode.darken),
              image: AssetImage(mekan_sofularmesire),
              fit: BoxFit.cover)),
      child: Padding(
        padding: EdgeInsets.only(top: 36.0, left: 6.0, right: 6.0, bottom: 6.0),
        child: ExpansionTile(
          collapsedIconColor: Colors.amber,
          iconColor: Colors.amber,
          title: Text(
            'Sofular Mesire Alanı',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          children: <Widget>[
            Text(
              'Sofular mahallemizde yer alan ve denize kıyısı olan mesire alanımız ziyaretçilerine hem deniz ve plaj keyfi hem de aynı zamanda doğa ile iç içe dinleme imkanı sunuyor. Mesire alanımızın içerisinde bulunan otopark ve kamp meraklılarına ayrılmış bölümün yanı sıra deniz manzarası eşliği ve çam ağaçlarının gölgesinde yapacağınız piknik alanı ile unutulmaz bir gün geçireceğinizin garantisini veriyor.',
              style: TextStyle(color: Colors.white70),
            ),
            Row(
              children: [
                Text(
                  "Rota oluşturmak için yönlendir",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
                IconButton(
                    onPressed: () {
                      //_launchMap(map_sofular);
                    },
                    icon: Icon(
                      Icons.navigation_outlined,
                      color: Colors.blue,
                    ))
              ],
            )
          ],
        ),
      ),
    ),
  );

  // return TextButton(
  //   onPressed: () {},
  //   child: Material(
  //     color: Colors.black.withOpacity(0.5),
  //     borderRadius: BorderRadius.all(Radius.circular(45)),
  //     //elevation: 3,
  //     child: Container(
  //       //margin: EdgeInsets.all(5),
  //       margin: EdgeInsets.zero,
  //       width: MediaQuery.of(context).size.width - 50,
  //       height: MediaQuery.of(context).size.height * 0.18,
  //       child: Stack(children: [
  //         Container(
  //           decoration: BoxDecoration(
  //               color: color_card == null
  //                   ? sile_mavisi.withOpacity(1)
  //                   : color_card,
  //               //borderRadius: BorderRadius.all(Radius.circular(5))
  //               borderRadius: BorderRadius.only(
  //                   topLeft: Radius.circular(45),
  //                   bottomLeft: Radius.circular(45),
  //                   topRight: Radius.circular(5),
  //                   bottomRight: Radius.circular(5))),
  //           margin: EdgeInsets.only(left: 50),
  //           child: Column(children: [
  //             Padding(
  //               padding: const EdgeInsets.only(left: 55, right: 5, top: 15),
  //               child: Align(alignment: Alignment.topLeft, child: widget1),
  //             ),
  //             Padding(
  //               padding: const EdgeInsets.only(left: 55, right: 5, top: 8),
  //               child: Container(
  //                 child: widget2,
  //               ),
  //             ),
  //           ]),
  //         ),
  //         Align(
  //           alignment: Alignment.centerLeft,
  //           child: CircleAvatar(
  //             backgroundImage: AssetImage(assetimage),
  //             radius: 50,
  //           ),
  //         ),
  //       ]),
  //     ),
  //   ),
  // );
}
