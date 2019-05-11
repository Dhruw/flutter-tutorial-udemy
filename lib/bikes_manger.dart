import "package:flutter/material.dart";

import "./bikes.dart";

class BikesManager extends StatefulWidget{
  final String bikes;
  // Why are we using final in StatefulWidget ???
  // Because despite the class being StatefulWidget, the state management is not done by this class, it is handled by its supporter class
  // which extends the "State" and associated to the StatefulWidget

  BikesManager(this.bikes);

  @override
  State<StatefulWidget> createState() {
    return _BikesManagerState();
  }
}

class _BikesManagerState extends State<BikesManager> {

  // The data passed to BikesManager class (above) has to be stored in this class VIA A METHOD ONLY. We cannot directly assign the data
  List<String> _bikes = [];

  @override
  void initState() {
    // The method to initialize data is initState. setState is not required here because initState is executed first
    // add is another dart magic and widget is used to access the vaiables passed
    _bikes.add(widget.bikes);
    super.initState();
  }

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