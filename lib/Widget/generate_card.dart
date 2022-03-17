import 'package:flutter/material.dart';
import 'package:sile/config.dart';

Widget build_card(BuildContext context, String assetimage, Widget? widget1,
    Widget? widget2, Color? color_card, String hedef) {
  return TextButton(
    onPressed: () => Navigator.pushNamed(context, hedef),
    child: Material(
      color: Colors.black.withOpacity(0.5),
      borderRadius: BorderRadius.all(Radius.circular(45)),
      //elevation: 3,
      child: Container(
        //margin: EdgeInsets.all(5),
        margin: EdgeInsets.zero,
        width: MediaQuery.of(context).size.width - 50,
        height: MediaQuery.of(context).size.height * 0.18,
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
                color: color_card == null
                    ? sile_mavisi.withOpacity(1)
                    : color_card,
                //borderRadius: BorderRadius.all(Radius.circular(5))
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45),
                    bottomLeft: Radius.circular(45),
                    topRight: Radius.circular(5),
                    bottomRight: Radius.circular(5))),
            margin: EdgeInsets.only(left: 50),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(left: 55, right: 5, top: 15),
                child: Align(alignment: Alignment.topLeft, child: widget1),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 55, right: 5, top: 8),
                child: Container(
                  child: widget2,
                ),
              ),
            ]),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              backgroundImage: AssetImage(assetimage),
              radius: 50,
            ),
          ),
        ]),
      ),
    ),
  );
}
