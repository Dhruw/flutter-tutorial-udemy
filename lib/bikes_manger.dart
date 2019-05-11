import "package:flutter/material.dart";

import "./bikes.dart";

class BikesManager extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _BikesManagerState();
  }
}

class _BikesManagerState extends State<BikesManager> {
  List<String> _bikes = ["Biker"];

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
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
          Bikes(_bikes)
        ]);
  }
}