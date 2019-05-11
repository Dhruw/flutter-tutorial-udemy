import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello Divyanshu"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              child: RaisedButton(
                child: Text("My Button"),
                onPressed: () => {},
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Text("Hello Body"),
                  Image.asset('assets/images/Dominar.jpg')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
