import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  Detail({this.nama});
  final String nama;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Detail'),
        backgroundColor: Colors.indigoAccent,
      ),
      body: new Container(
        child: Center(
          child: new Text(nama),
        ),
      ),
    );
  }
}
