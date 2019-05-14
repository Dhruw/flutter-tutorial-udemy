import 'package:flutter/material.dart';

import "./bikes_manger.dart";

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Hello Bikers"),
          ),
          // body: BikesManager(bikes: "Bajaj Dominar")),
          body: BikesManager()),
    );
  }
}
