import 'package:flutter/material.dart';

class RButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Raise Button'),
      ),
      body: new ListView(
        children: <Widget>[
          RaisedButton(
            child: Text('Raise Button'),
            color: Colors.blueGrey,
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: RaisedButton(
              child: Text(
                'Raise button Cirle',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blueGrey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: OutlineButton(
              child: Text(
                'Out Line Button',
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: OutlineButton(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      'Out Line Button',
                    ),
                    Icon(Icons.help),
                    Text(
                      'Out Line Button',
                    ),
                    Text(
                      'Out Line Button',
                    ),
                  ],
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              onPressed: () {},
            ),
          ),
          ButtonBar(
            children: <Widget>[
              Text('button bar'),
              Icon(Icons.mail),
            ],
          ),
        ],
      ),
    );
  }
}
