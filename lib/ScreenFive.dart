import 'dart:async';

import 'package:flutter/material.dart';

class FiveScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.deepOrange,
          title: new Text("Five Screen -- List View and apdater"),
        ),
        body: new ContentScreenFive());
  }
}

class ContentScreenFive extends StatefulWidget {
  ContentScreenFive({Key key}) : super(key: key);

  @override
  _ContentScreenFive createState() => new _ContentScreenFive();
}

class _ContentScreenFive extends State<ContentScreenFive> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      children: <Widget>[
        new Container(
          child: new RaisedButton(
              child: new Text("show dialog"), onPressed: _neverSatisfied),
        ),
        new Container(
          height: 50.0,
          decoration: new BoxDecoration(color: Colors.red),
        ),
        new Container(
          margin:
          //new EdgeInsets.only(left: 8.0, top: 0.0, right: 5.5, bottom: 0.0),
          new EdgeInsets.symmetric(vertical: 5.0),
          height: 50.0,
          decoration: new BoxDecoration(color: Colors.yellow),
        ),
        new Container(
          height: 50.0,
          decoration: new BoxDecoration(color: Colors.blue),
        )
      ],
    );
  }

  Future<Null> _neverSatisfied() async {
    return showDialog<Null>(
      context: context,
      barrierDismissible: false, // user must tap button!
      child: new AlertDialog(
        title: new Text('Rewind and remember'),
        content: new SingleChildScrollView(
          child: new ListBody(
            children: <Widget>[
              new Text('You will never be satisfied.'),
              new Text('You\’re like me. I’m never satisfied.'),
            ],
          ),
        ),
        actions: <Widget>[
          new FlatButton(
            child: new Text('Regret'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
