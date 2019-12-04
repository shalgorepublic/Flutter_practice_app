import 'package:flutter/material.dart';
import './home.dart';
import '../product_manager.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: new Text('Product Details'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.create),
                  text: 'Create Product',
                ),
                Tab(
                  icon: Icon(Icons.list),
                  text: 'My product',
                ),
                Tab(
                  icon: Icon(Icons.add_to_photos),
                  text: 'Login',
                ),
                Tab(
                  icon: Icon(Icons.add_to_photos),
                  text: 'Login Page',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ProductDetails(),
              ProductManager(),
              PracticePage(),
              PracticePage(),
            ],
          )),
    );
    ;
  }
}

class ProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20.0),
              child:
            TextField(
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.w300),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Product',
              ),
            ),
            ),
            Container(
                margin: EdgeInsets.all(20.0),
                child: Image.asset('assets/food.jpg',
                    width: 350, height: 200, fit: BoxFit.fill)),
            Container(
              margin: EdgeInsets.all(20.0),
              height:  200,
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(50.0),
                color: Colors.lightBlueAccent,
              ),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

                children: <Widget>[

              Container(
              
              padding: EdgeInsets.all(10.10),
              child: Text('Details Page',
                  style: TextStyle(
                    color: Colors.deepOrangeAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  )),
            ),
            RaisedButton(
              child: Text("BACK"),
              color: Theme.of(context).accentColor,
              onPressed: () => Navigator.pop(context),
            ),
            RaisedButton(
              child: Text('Open Modal'),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: <Widget>[
                         Text('This is a Modal!'),
                         Text('This is a Modal!'),
                         Text('This is a Modal and '),
                      ]);
                    });
              },
            ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}


class PracticePage extends StatefulWidget {
  @override
  _PracticePageState createState() => _PracticePageState();
}



class _PracticePageState extends State<PracticePage> {

  String _passwordValue = '';
  bool _acceptTerms = false;
  @override
  Widget build(BuildContext context) {
    return Container(
    child: Column(
    children: <Widget>[
      Text("helo practice page"),
      TextField(
        decoration: InputDecoration(labelText: 'Password'),
        obscureText:true,
        onChanged: (String value) {
          setState(() {
              _passwordValue = value;
          });
        },

      ),

      SwitchListTile(
        value: _acceptTerms,
        onChanged: (bool value){
          setState(() {
            _acceptTerms = value;
          });
        },
        title:Text("Accepts Terms")
      ),
      SizedBox(),
],
    ),
    );
  }
}

