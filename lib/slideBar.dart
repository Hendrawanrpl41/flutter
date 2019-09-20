import 'package:flutter/material.dart';
import 'package:coba2/detail.dart';
import 'package:coba2/tabbar.dart';

class SlideDemo extends StatefulWidget {
  @override
  _SlideDemoState createState() => _SlideDemoState();
}

class _SlideDemoState extends State<SlideDemo> {
  String nama1 = "Hendrawan";
  String nama2 = "Ratih";
  String backup;
  String email1 = "Hendrawan@gmail.com";
  String email2 = "Ratih@gmail.com";
  String backupEmail;
  //fungsi
  void gantiUser() {
    this.setState(() {
      backup = nama1;
      nama1 = nama2;
      nama2 = backup;

      backupEmail = email1;
      email1 = email2;
      email2 = backupEmail;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Slide Bar'),
        backgroundColor: Colors.black87,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text(nama1),
              accountEmail: new Text(email1),
              currentAccountPicture: new GestureDetector(
                onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context)=> new Detail(nama: nama1,)
                ),),
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage('images/hendrawan'),
                ),
              ),
              // decoration: new BoxDecoration(
              //   image: new DecorationImage(
              //     image: new NetworkImage('images/b.png'),
              //   ),
              // ),
              otherAccountsPictures: <Widget>[
                new GestureDetector(
                  onTap: () => gantiUser(),
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage('images/hend'),
                  ),
                ),
              ],
            ),
            new ListTile(
              title: new Text('Setting'),
              trailing: new Icon(Icons.settings),
            ),
            new ListTile(
              title: new Text('Close'),
              trailing: new Icon(Icons.close),
            ),
          ],
        ),
      ),
      body: Home(),
    );
  }
}
