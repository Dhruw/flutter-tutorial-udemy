import 'package:flutter/material.dart';

import "./bikes_manger.dart";

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _bikes = ["Biker"];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello Divyanshu"),
        ),
        body: BikesManager()
      ),
    );
  }
}
