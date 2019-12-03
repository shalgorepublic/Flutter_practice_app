import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: new Text("My First App"),
          ),
          body: Column(children: [
            Container(
              margin: EdgeInsets.only(top: 50.0,bottom: 10.0),
              child: RaisedButton(
                child: Text("Clic me For Add Product"),
                onPressed: () {},
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/food.jpg'),
                  Text("Food Paradise")
                ],
              ),
            )
          ])),
    );
  }
}
