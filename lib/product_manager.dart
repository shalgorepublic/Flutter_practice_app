import 'package:flutter/material.dart';
import './products.dart';

class productManager extends StatefulWidget {
  @override
  _productManagerState createState() => _productManagerState();
}

class _productManagerState extends State<productManager> {
  List<String> _products = ["helo food"];

  @override
  Widget build(BuildContext context) {
    return Column (children:  [Container(
      margin: EdgeInsets.only(top: 5.0, bottom: 10.0),
      child: RaisedButton(
        child: Text("Clic me For Add Product"),
        onPressed: () {
          setState(() {
            _products.add("Fast Food");
            print(_products);
          });
        },
      ),
    ),
    Products(_products)
    ]);
  }
}
