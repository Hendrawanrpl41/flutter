import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(
              padding: new EdgeInsets.all(20.0),
            ),
            new Text(
              'Smartphone',
              style: new TextStyle(fontSize: 30.0),
            ),
            new Padding(
              padding: new EdgeInsets.all(20.0),
            ),
            new Image.asset(
              'images/hendrawan.jpg',
              width: MediaQuery.of(context).size.width / 1,
              height: MediaQuery.of(context).size.width / 2,
            ),
            new Text('Hendrawan')
          ],
        ),
      ),
    );
  }
}
