import 'package:flutter/material.dart';
import 'package:flutter_app3/ThreeScreen.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.deepOrange,
          title: new Text("Second Screen"),
        ),
        body: new Column(
          children: <Widget>[
            new Container(
              child: new RaisedButton(
                onPressed: () {
                  // Navigate back to first screen when tapped!
                  Navigator.pop(context);
                },
                child: new Text('Go back!'),
              ),
            ),

            new Container(
              child: new RaisedButton(
                onPressed: () {
                  // Navigate back to first screen when tapped!
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder:(context) => new ThreeScreen())
                  );
                },
                child: new Text('Next Screen'),
              ),
            ),

            new Expanded(
              child: new ListView(
                children: _getListData(),
              ),
            )
          ],
        ));
  }

  _getListData() {
    List<Widget> widgets = [];
    for (int i = 0; i < 100; i++) {
      widgets.add(new Padding(
          padding: new EdgeInsets.all(10.0), child: new Text("Row $i")));
    }
    return widgets;
  }

}
