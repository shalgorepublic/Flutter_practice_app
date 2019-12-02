import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(

      title: "My App",
      home: new Scaffold(
        appBar: new AppBar(
          title: new  Text("Home Page first"),
        ),
        body: new Container(child:  new Text("Helo World",),),
      )
    );
  }
}
class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
