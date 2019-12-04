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
  var productFlag = false;

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
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.w300),
              controller: widget.myController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Product',
              ),
            ),
            Container(
              child:
              Text(
              'Products quantity : ' + '${_products.length}',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            ),
            new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Add Product"),
                    color: Colors.green,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        if(widget.myController.text.length>0) {
                          _products.add(widget.myController.text);
                          productFlag = false;
                        }
                        if(widget.myController.text.length == 0){
                          setState(() {
                            productFlag = true;
                          });
                        }
                        print(productFlag);
                        print(widget.myController.text);
                      });
                    },
                  ),
                  RaisedButton(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Remove Product"),
                    color: Colors.red,
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
                 // productFlag == true ?

                ]),
           if( productFlag == true)
            Text(
              'please add product name',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.red
              ),
            ),
          ],
        ),
      ),
      Expanded(child: Products(_products))
    ]);
  }
}
