import 'package:flutter/material.dart';
import 'package:flutter_app3/AnimationScreen.dart';
import 'package:flutter_app3/ExampleScreen.dart';
import 'package:flutter_app3/ScreenFive.dart';
import 'package:flutter_app3/ScreenFour.dart';
import 'package:flutter_app3/ScreenTwo.dart';
import 'package:flutter_app3/ThreeScreen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _dataString = "null";
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
          backgroundColor: Colors.blueGrey,
        ),
        body: new Container(
            // ignore: argument_type_not_assignable, invocation_of_non_function
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage('images/a.jpg'),
                fit: BoxFit.fitHeight,
              ),
            ),
            child: new Column(
              children: <Widget>[
                // ignore: extra_positional_arguments_could_be_named
                new Row(
                  children: <Widget>[
                    new Column(
                      children: <Widget>[
                        new Text("colum 1"),
                        new Text("colum 1")
                      ],
                    ),
                    new Column(
                      children: <Widget>[
                        new Text("colum 1"),
                        new Text("colum 1")
                      ],
                    )
                  ],
                ),

                new Container(
                  child: new Image(image: new AssetImage('images/a.jpg')),
                ),

                new Container(
                    child: new RaisedButton(
                        color: Colors.blue,
                        onPressed: () {
                          setState(() {
                            _count++;
                            _dataString = _count.toString();
                            print(_dataString);
                          });
                        })),
                new Text(_dataString),
                new Container(
                  width: 120.0,
                  height: 70.0,
                  color: Colors.yellow,
                  child: new GestureDetector(onTap: () => print('tapped')),
                ),
                new Row(
                  children: <Widget>[
                    new IconButton(
                        icon: new Icon(Icons.directions_car),
                        onPressed: () {
                          setState(() {
                            _count++;
                            _dataString = _count.toString();
                            print(_dataString);
                          });
                        }),
                    new RaisedButton(
                        color: Colors.deepOrange,
                        child: new Text("next screen Two"),
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new SecondScreen()));
                        }),
                    new RaisedButton(
                        color: Colors.deepOrange,
                        child: new Text("List view"),
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new ThreeScreen()));
                        }),
                  ],
                ),

                new Row(
                  children: <Widget>[
                    new RaisedButton(
                        color: Colors.deepOrange,
                        child: new Text("next screen Four"),
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new FourScreen()));
                        }),

                    new RaisedButton(
                        color: Colors.deepOrange,
                        child: new Text("next screen Five"),
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new FiveScreen()));
                        }),
                  ],
                ),

                new Row(
                  children: <Widget>[
                    new RaisedButton(
                        color: Colors.deepOrange,
                        child: new Text("Example"),
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new ExampleScreen()));
                        }),
                    new RaisedButton(
                        color: Colors.deepOrange,
                        child: new Text("Example Animation"),
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new AnimationScreen()));
                        }),
                  ],
                ),
              ],
            )));
  }

  @override
  void initState() {
    _count;
    _dataString;
  }
}
