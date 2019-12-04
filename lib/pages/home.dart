import 'package:flutter/material.dart';
import 'package:flutter_exp_app/pages/product.dart';
import '../product_manager.dart';
import '../pages/product.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Manu'),
            ),
            ListTile(title: Text('Manage Products'),onTap: ()=>{Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductPage(), ),),},)
          ],
        ),
      ),
      appBar: AppBar(
        title: new Text("My First App"),
      ),
      body: ProductManager(),
    );
  }
}
