import "package:flutter/material.dart";

class Bikes extends StatelessWidget {
  final List<String>
      bikes; // I have declared a value for "bikes" for local use of this class. Till this line it is undefined
  // "final" keyword is used because in stateless widget the values should not change. final is similar to const in JS.
  // If the value of bikes is changed from parent then the value of bikes will be replaced instead of updating it

  Bikes(this.bikes); // This is a constructor and this.bikes is a special "magic" of dart to assign values

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: bikes
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
    );
  }
}
