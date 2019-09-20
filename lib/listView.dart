import 'package:flutter/material.dart';

class ListSaya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('List View'),
          backgroundColor: Colors.orange,
        ),
        body: new ListView(
          children: <Widget>[
            new KumpulanList(gambar: Icons.tablet, judul: 'Tablet',),
            new KumpulanList(gambar: Icons.computer, judul: 'computer',),
            new KumpulanList(gambar: Icons.smartphone, judul: 'smarphone',),
            new KumpulanList(gambar: Icons.laptop_mac, judul: 'macboook',),
            new KumpulanList(gambar: Icons.laptop_windows, judul: 'Windows',),
            new KumpulanList(gambar: Icons.laptop_chromebook, judul: 'chrombook',),
            //list view biasa *
            // new ListTile(
            //   leading: new Icon(Icons.speaker, size: 20.0,),
            //   title: Text('Speker'),
            // ),
            // new ListTile(
            //   leading: new Icon(Icons.music_video, size: 20.0,),
            //   title: Text('Speker'),
            // ),
            // new ListTile(
            //   leading: new Icon(Icons.panorama, size: 20.0,),
            //   title: Text('Speker'),
            // ),
          ],
        ));
  }
}

class KumpulanList extends StatelessWidget {

  KumpulanList({this.gambar, this.judul});

  final IconData gambar;
  final String judul;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(5.0),
      child: new Column(
        children: <Widget>[
           new Icon(gambar,
              size: 150.0,
            ),
            new Text(judul)
        ],
      ),
    );
  }
}
