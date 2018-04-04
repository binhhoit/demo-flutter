import 'package:flutter/material.dart';

class FourScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.deepOrange,
          title: new Text("Four Screen -- text field"),
        ),
        body: new ContentScreenFour());
  }
}

class ContentScreenFour extends StatefulWidget {
  ContentScreenFour({Key key}) : super(key: key);

  @override
  _ContentScreenFour createState() => new _ContentScreenFour();
}

class _ContentScreenFour extends State<ContentScreenFour> {
  List<Offset> _points = <Offset>[];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      children: <Widget>[
        new Container(
            margin: new EdgeInsets.all(10.0),
            child: new TextField(
              decoration: new InputDecoration(hintText: "This is a hint"),
            )),

        new Expanded(
            child: new GestureDetector(
              onPanUpdate: (DragUpdateDetails details) {
                setState(() {
                  RenderBox referenceBox = context.findRenderObject();
                  Offset localPosition =
                  referenceBox.globalToLocal(details.globalPosition);
                  _points = new List.from(_points)..add(localPosition);
                });
              },
              onPanEnd: (DragEndDetails details) => _points.add(null),
              child: new CustomPaint(painter: new SignaturePainter(_points), size: Size.infinite),
            ),

        )
      ],
    );
  }

}

class SignaturePainter extends CustomPainter {
  SignaturePainter(this.points);
  final List<Offset> points;
  void paint(Canvas canvas, Size size) {
    var paint = new Paint()
      ..color = Colors.black
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.0;
    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null)
        canvas.drawLine(points[i], points[i + 1], paint);
    }
  }
  bool shouldRepaint(SignaturePainter other) => other.points != points;
}