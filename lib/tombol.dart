import 'package:flutter/material.dart';

class Tombol extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text('Judul Appbar'),
        actions: <Widget>[
          Icon(Icons.more_vert),
        ],
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Text('Belajar Flutter', style: TextStyle(fontSize: 30.0),),
            new Icon(Icons.edit_location, size: 90.0,),
          ],
        ),
      ),
    );
  }
}