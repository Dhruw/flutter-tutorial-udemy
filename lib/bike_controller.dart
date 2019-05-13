import "package:flutter/material.dart";

class BikeController extends StatelessWidget {

  final Function _addNewBike;
  BikeController(this._addNewBike);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
                child: Text("Add Bikes"),
                onPressed: () {
                  _addNewBike("Dominar 2019");
                });
  }
}