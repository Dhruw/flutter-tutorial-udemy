import 'package:flutter/material.dart';

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
        body: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
                child: Text("Add Bikes"),
                onPressed: () {
                  setState(() {
                    _bikes.add("Hamara Bajaj");
                    print(_bikes);
                  });
                }),
          ),
          Column(
            children: _bikes
                .map(
                  (bikeName) => Card(
                        child: Column(
                          children: <Widget>[
                            Text(bikeName),
                            Image.asset('assets/images/Dominar.jpg')
                          ],
                        ),
                      ),
                )
                .toList(),
          ),
        ]),
      ),
    );
  }
}
