import 'package:flutter/material.dart';
import './product_manager.dart';
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

          body:ProductManager(),
          ),
    );
  }
}
