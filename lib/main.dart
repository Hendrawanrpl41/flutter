import 'package:flutter/material.dart';
// import 'package:coba2/tabbar.dart' as home;
// import 'package:coba2/inputText.dart' as inputan;
import 'package:coba2/slideBar.dart' as slidebar;
// import 'package:coba2/listView.dart' as listSaya;
// import 'package:coba2/tombol.dart' as tombol;
// import 'package:coba2/raiseButton.dart' as raise;

void main() {
  runApp(new MaterialApp(
    title: 'Belajar Flutter',
    // home: new home.Home(),
    home: new slidebar.SlideDemo(),
    //untuk pindah icon
    // routes: <String, WidgetBuilder>{
    //   '/HalSatu': (BuildContext context) => new HalSatu(),
    //   '/HalDua': (BuildContext context) => new HalDua(),
    // },
  ));
}


