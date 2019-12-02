import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(

      title: "My App",
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String  myText = "helo world";
  void _changeText(){
    setState(() {
      if(myText.startsWith("h")) {
        myText = "Welcome to helo world";
      }
      else{
        myText = "helo world";
      }
      });
  }

  Widget _bodyWidget(){

    return new Container(
      padding: const EdgeInsets.all(10.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[ 
            new Text(myText,style: new TextStyle(color: Colors.pink,fontSize: 25),),
            new RaisedButton(onPressed: _changeText,
            color: Colors.pink,
            textColor: Colors.white,
            child: new Text("Click me",style: new TextStyle(fontWeight:FontWeight.bold,fontSize: 20.0),))
          ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Home Page"),
      ),
      body: _bodyWidget(),
    );
  }
}

