import 'package:flutter/material.dart';

class ThreeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.deepOrange,
          title: new Text("Three Screen -- List View and apdater"),
        ),
        body: new ContentScreenThree());
  }
}

class ContentScreenThree extends StatefulWidget {
  ContentScreenThree({Key key}) : super(key: key);

  @override
  _ContentScreenThree createState() => new _ContentScreenThree();
}

class _ContentScreenThree extends State<ContentScreenThree> {
  List<Widget> widgets = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 100; i++) {
      widgets.add(getRow(i));
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
        child: new ListView.builder(
            itemCount: widgets.length,
            itemBuilder: (BuildContext context, int position) {
              return getRow(position);
            }));
  }


  //Sample Adapter android
  Widget getRow(int i) {
    return new GestureDetector(
      child: new Padding(
          padding: new EdgeInsets.all(10.0), child: new Text("Row $i")),
      onTap: () {
        setState(() {
          widgets.add(getRow(widgets.length + 1));
          print('row $i');
        });
      },
    );
  }
}
