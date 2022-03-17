import 'package:flutter/material.dart';
//import '/Pages/main.dart';
import '../Widget/generate_button.dart';

class FirstRoute extends StatefulWidget {
  FirstRoute({Key? key}) : super(key: key);

  @override
  State<FirstRoute> createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          build_button(
              'https://www.sile.bel.tr/upload/files/silelogopng.png',
              Icon(Icons.check, color: Colors.black), //Icon(null)
              100,
              100,
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
