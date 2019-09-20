import 'package:flutter/material.dart';

class HalSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Music'),
      ),
      body: Center(
        child: IconButton(
          icon: Icon(
            Icons.music_note,
            size: 50.0,
            color: Colors.orange,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/HalDua');
          },
        ),
      ),
    );
  }
}

class HalDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Music'),
      ),
      body: Center(
        child: IconButton(
          icon: Icon(
            Icons.video_call,
            size: 50.0,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/HalSatu');
          },
        ),
      ),
    );
  }
}

class CardSaya extends StatelessWidget {
  CardSaya({
    this.icon,
    this.teks,
    this.warna,
  });
  final IconData icon;
  final String teks;
  final Color warna;
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Card(
        child: Row(
          children: <Widget>[
            Icon(icon, color: warna),
            Text(teks),
          ],
        ),
      ),
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        leading: new Icon(Icons.home),
        title: new Center(
          child: Text('Gojek'),
        ),
        actions: <Widget>[
          new Icon(Icons.more_vert),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CardSaya(
                icon: Icons.hotel,
                teks: 'hotel',
                warna: Colors.black,
              ),
              CardSaya(
                icon: Icons.hotel,
                teks: 'hotel',
                warna: Colors.black,
              )
            ],
          ),
        ),
      ),
      body: new Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CardSaya(
              icon: Icons.home,
              teks: 'Home',
              warna: Colors.pink,
            ),
            CardSaya(
              icon: Icons.home,
              teks: 'Home',
              warna: Colors.green,
            ),
            CardSaya(
              icon: Icons.home,
              teks: 'Home',
              warna: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}