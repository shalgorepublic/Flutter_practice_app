import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ['Food Tester','helo world'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: new Text("My First App"),
          ),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 5.0, bottom: 10.0),
                child: RaisedButton(
                  child: Text("Clic me For Add Product"),
                  onPressed: () {},
                ),
              ),
              Column(
                  children: _products
                      .map((element) => Card(
                            child: Column(
                              children: <Widget>[
                                Image.asset('assets/food.jpg'),
                                Text(element)
                              ],
                            ),
                          ))
                      .toList()),
            ],
          )),
    );
  }
}
