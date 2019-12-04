import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget {
  TextEditingController myController = new TextEditingController();

  ProductManager();

  @override
  _ProductManagerState createState() => _ProductManagerState();
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('helo shahid     ${_products.length}');
    return Column(children: [
      Container(
        margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new TextField(
              controller: widget.myController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Product',
              ),
            ),
            Text(
              'length of products : '+'${_products.length}',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RaisedButton(
                    child: Text("Add Product"),
                    color: Colors.pink,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        _products.add(widget.myController.text);
                        print(_products);
                        print(widget.myController.text);
                      });
                    },
                  ),
                  RaisedButton(
                    child: Text("Remove Product"),
                    color: Colors.orange,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        if (_products.length >= 1) {
                          _products.remove(_products[_products.length - 1]);
                        }
                        print(_products);
                        print(_products.length);
                      });
                    },
                  ),
                ]),
          ],
        ),
      ),
      Expanded(child: Products(_products))
    ]);
  }
}
