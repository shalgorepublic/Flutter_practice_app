import 'package:flutter/material.dart';
import './pages/product.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products);

  @override
  Widget build(BuildContext context) {
    return products.length > 0
        ? ListView(
        children: products
            .map((element) =>
            Card(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/food.jpg',
                      width: 300, height: 150, fit: BoxFit.fill),
                  Text(element,
                      style: TextStyle(
                          color: Colors.pinkAccent, fontSize: 25)),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                        child: Text('Details'),
                        onPressed: () =>
                            Navigator.push(context, MaterialPageRoute(builder: (
                                context) =>
                                ProductPage(),),),
                        color: Colors.pink,
                      )
                    ],
                  ),
                ],
              ),
            ))
            .toList())
        : Container(
      margin:
      const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 150.0),
      child: Center(
          child: Text(
            'No Products Found Please Add ',
            style: TextStyle(
                backgroundColor: Colors.blue,
                color: Colors.white,
                fontSize: 20),
          )),
      decoration: new BoxDecoration(
        color: Colors.purple,
        gradient: new LinearGradient(
          colors: [Colors.red, Colors.greenAccent],
        ),
      ),
    );
  }
}
