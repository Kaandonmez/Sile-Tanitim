import 'package:flutter/material.dart';
import '../Widget/generate_button.dart';
import '../main.dart';

class SecondRoute extends StatefulWidget {
  SecondRoute({Key? key}) : super(key: key);

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Sayfa1()),
              );
            },
            child: Text("test"),
            color: Colors.amber,
          ),
          build_button(
              'https://www.sile.bel.tr/upload/files/silelogopng.png',
              Icon(Icons.check, color: Colors.black),
              100,
              50,
              "test123",
              TextStyle(color: Colors.amber),
              context,
              '/',
              Colors.amber),
        ],
      ),
      drawer: Drawer(),
    );
  }
}
