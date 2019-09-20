import 'package:flutter/material.dart';
import 'package:coba2/hal_headset.dart' as headset;
import 'package:coba2/hal_komputer.dart' as komputer;
import 'package:coba2/hal_smartphone.dart' as smartphone;
import 'package:coba2/hal_profil.dart' as profil;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.home),
        // backgroundColor: Colors.grey,
        // title: Text('Daftar Elektronuik'),
        // actions: <Widget>[
        //   Icon(Icons.more_vert),
        // ],
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.headset),
              text: 'Headset',
            ),
            new Tab(
              icon: new Icon(Icons.computer),
              text: 'komputer',
            ),
            new Tab(
              icon: new Icon(Icons.smartphone),
              text: 'smartphone',
            ),
            new Tab(
              icon: new Icon(Icons.person),
              text: 'Profil',
            ),
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new headset.Headset(),
          new komputer.Komputer(),
          new smartphone.Smartphone(),
          new profil.Profil(),
        ],
      ),
      bottomNavigationBar: new Material(
        color: Colors.amber,
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.headset),
              text: 'Headset',
            ),
            new Tab(
              icon: new Icon(Icons.computer),
              text: 'komputer',
            ),
            new Tab(
              icon: new Icon(Icons.smartphone),
              text: 'smartphone',
            ),
            new Tab(
              icon: new Icon(Icons.person),
              text: 'Profil',
            ),
          ],
        ),
      ),
    );
  }
}
