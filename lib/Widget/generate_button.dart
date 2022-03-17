import 'package:flutter/material.dart';

Widget build_button(
    String netimage,
    Icon ikon,
    double genislik,
    double yukseklik,
    String buton_yazisi,
    TextStyle yazi_stili,
    BuildContext tur,
    String hedef,
    Color renk) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Material(
      elevation: 11,
      borderRadius: BorderRadius.all(Radius.circular(5)),
      child: Container(
        width: genislik,
        height: yukseklik,
        decoration: BoxDecoration(
          color: renk.withOpacity(0.45),
          //border: Border.all(color: renk.withOpacity(0.1)),
          borderRadius: BorderRadius.all(Radius.circular(5)),
          image: DecorationImage(
              opacity: 0.45,
              image: NetworkImage(
                netimage,
              ),
              fit: BoxFit.cover),
          shape: BoxShape.rectangle,
        ),
        child: TextButton(
          onPressed: () => Navigator.pushNamed(tur, hedef),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ikon,
              Text(
                buton_yazisi,
                style: yazi_stili,
              )
            ],
          ),
        ),
      ),
    ),
  );
}
