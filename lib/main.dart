import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import './pages/home.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light, accentColor: Colors.blue),
      home: HomePage(),
    );
  }
}
