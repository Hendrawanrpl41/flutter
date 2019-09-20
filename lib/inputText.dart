//packge
import 'package:flutter/material.dart';

class Inputan extends StatefulWidget {
  @override
  _InputanState createState() => _InputanState();
}

//class
class _InputanState extends State<Inputan> {
  //fungsi
  void _alertDialog(String str) {
    if (str != "") {
      AlertDialog alertDialog = new AlertDialog(
        content: Text(str),
        actions: <Widget>[
          new RaisedButton(
            color: Colors.red,
            child: new Text('Ok'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          new RaisedButton(
            color: Colors.red,
            child: new Text('Ok'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      );
      showDialog(
        context: context,
        child: alertDialog,
      );
      return;
    }
  }

//fungsi
  void _snackBar(String str) {
    if (str != "") {
      _ScaffoldState.currentState.showSnackBar(new SnackBar(
        content: new Text(
          str,
        ),
        duration: new Duration(seconds: 3),
      ));
    }
  }

  //variabel local
  String teks = "";
  //variabel global
  final GlobalKey<ScaffoldState> _ScaffoldState =
      new GlobalKey<ScaffoldState>();
  //controller
  TextEditingController controllerAlert = new TextEditingController();
  TextEditingController controllerInput = new TextEditingController();
  TextEditingController controllerSnackBar = new TextEditingController();

  //buat menu
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _ScaffoldState,
      appBar: AppBar(
        title: new Text('inputan User'),
        backgroundColor: Colors.teal,
      ),
      body: new Column(
        children: <Widget>[
          new TextField(
            controller: controllerSnackBar,
            decoration: new InputDecoration(
              hintText: 'Tulis SnackBar',
            ),
            onSubmitted: (String str) {
              //muncul tulisan di bawah
              _snackBar(str);
            },
          ),
          new TextField(
            controller: controllerAlert,
            decoration: new InputDecoration(
              hintText: 'Tulis Alert',
            ),
            onSubmitted: (String str) {
              // muncul aler
              _alertDialog(str);
            },
          ),
          new TextField(
            controller: controllerInput,
            decoration: new InputDecoration(
              hintText: 'Tulis data',
            ),
            onSubmitted: (String str) {
              // ubah data state
              setState(() {
                teks = str + '\n' + teks;
                controllerInput.text = "";
              });
            },
          ),
          new Text(
            teks,
            style: TextStyle(fontSize: 20.0),
          ),
        ],
      ),
    );
  }
}
