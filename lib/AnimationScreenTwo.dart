import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:flutter_app3/AnimationScreenThree.dart';
import 'package:flutter_app3/ExampleScreen.dart';
import 'package:flutter_test/flutter_test.dart';

class AnimationScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.deepOrange,
          title: new Text("Animation Screen two"),
        ),
        body: new ContentScreenAnimationTwo());
  }
}

class ContentScreenAnimationTwo extends StatefulWidget {
  ContentScreenAnimationTwo({Key key}) : super(key: key);

  @override
  _ContentScreenAnimationTwo createState() => new _ContentScreenAnimationTwo();
}

class _ContentScreenAnimationTwo extends State<ContentScreenAnimationTwo>
    with SingleTickerProviderStateMixin {
  //controller manager all animation in 1 secstion
  AnimationController _animationController;

  Animation zoomIn;
  Animation zoomOut;
  Animation passNewPosition;

  @override
  void initState() {
    super.initState();
    _animationController = new AnimationController(
      duration: new Duration(milliseconds: 3000),
      vsync: this,
    );

    //zoon in
    zoomIn = new Tween(
      begin: 50.0,
      end: 10.0,
    ).animate(new CurvedAnimation(
      parent: _animationController,
      curve: new Interval(
        0.0,
        0.5,
        curve: Curves.linear,
      ),
    ));

    //pass positon
    passNewPosition = new Tween(
      begin: 50.0,
      end: 200.0,
    ).animate(new CurvedAnimation(
      parent: _animationController,
      curve: new Interval(
        0.0,
        1.0,
        curve: Curves.easeInOut,
      ),
    ));

    //zoom out

    zoomOut = new Tween(
      begin: 10.0,
      end: 50.0,
    ).animate(new CurvedAnimation(
      parent: _animationController,
      curve: new Interval(
        0.5,
        1.0,
        curve: Curves.linear,
      ),
    ));

    _animationController.addListener(() {
      if (_animationController.isCompleted) {
        Navigator.push(context, new MaterialPageRoute(builder:(context) =>new AnimationScreenThree()));
      }
    });

    _animationController
      ..addListener(() {
        setState(() {});
      })
      ..forward();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new GestureDetector(
          onTap: () {
            _playAnimation();
            _animationController
              ..addListener(() {
                setState(() {});
              })
              ..forward();
            print("run animation");
          },
          child: new Container(
            width: 150.0,
            height: 150.0,
            margin: new EdgeInsets.only(left: _magrinAnimation()),
            child: new Center(
              child: new CircleAvatar(
                  radius: _valuesRadius(),
                  backgroundColor: const Color.fromRGBO(247, 64, 106, 1.0),
                  child: new Container(
                    width: 150.0,
                    height: 150.0,
                    alignment: FractionalOffset.center,
                    child: zoomIn.value > 75.0
                        ? new Text(
                            "Sign In",
                            style: new TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w300,
                              letterSpacing: 0.3,
                            ),
                          )
                        : new CircularProgressIndicator(
                            valueColor:
                                new AlwaysStoppedAnimation<Color>(Colors.white),
                          ),
                  )),
            ),
          ),
        )
      ],
    );
  }

  Future<Null> _playAnimation() async {
    try {
      await _animationController.forward();
      await _animationController.reverse();
    } on TickerCanceled {}
  }

  var inAnimation = true;

  double _valuesRadius() {

    if (inAnimation) {
      if (zoomIn.value <= 11.0) {
        inAnimation = false;
      }
      return zoomIn.value;
    } else {
      if (zoomOut.value == 50) {
        return 50.0;
      }
      return zoomOut.value;
    }
  }

  int count = 0;

  double _magrinAnimation() {

    if (passNewPosition.value > 199) {
      count++;
    }

    if (count >=1) {
      print(200);
      return 200.0;
    } else {
      print(passNewPosition.value);
      return passNewPosition.value;
    }
  }
}
