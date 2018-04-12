import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:flutter_app3/ExampleScreen.dart';
import 'package:flutter_test/flutter_test.dart';

class AnimationScreenThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.deepOrange,
          title: new Text("Animation Screen two"),
        ),
        body: new ContentScreenAnimationThree());
  }
}

class ContentScreenAnimationThree extends StatefulWidget {
  ContentScreenAnimationThree({Key key}) : super(key: key);

  @override
  _ContentScreenAnimationThree createState() => new _ContentScreenAnimationThree();
}

class _ContentScreenAnimationThree extends State<ContentScreenAnimationThree>
    with SingleTickerProviderStateMixin {
  //controller manager all animation in 1 secstion
  AnimationController _animationController;

  Animation zoomIn;
  Animation zoomOut;
  Animation passNewPosition;
  Animation passNewPosition2;

  @override
  void initState() {
    super.initState();
    _animationController = new AnimationController(
      duration: new Duration(milliseconds: 2000),
      vsync: this,
    );

    //zoon in
    zoomIn = new Tween(
      begin: 60.0,
      end: 170.0,
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

    //pass positon
    passNewPosition2 = new Tween(
      begin: 200.0,
      end: 50.0,
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
      begin: 170.0,
      end: 60.0,
    ).animate(new CurvedAnimation(
      parent: _animationController,
      curve: new Interval(
        0.5,
        1.0,
        curve: Curves.easeInOut,
      ),
    ));

    _animationController.addListener(() {
      if (_animationController.isCompleted) {

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
              child: new Container(
                  margin: new EdgeInsets.symmetric(
                      vertical: 9.5, horizontal: 7.7),
                  width: _height(),
                  height: 60.0,
                  child: new Material(
                    borderRadius: new BorderRadius.circular(96.0),
                    color: const Color.fromRGBO(247, 64, 106, 1.0),
                    child: new Center(
                      child: new Text("1",
                          style: new TextStyle(color: Colors.white)),
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

  double _height() {

    if (inAnimation) {
      if (zoomIn.value >= 149) {
        inAnimation = false;
      }
      return zoomIn.value;
    } else {
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

  double _magrinAnimation2() {

    if (passNewPosition2.value > 1) {
      count++;
    }

    if (count >=1) {
      print(200);
      return 200.0;
    } else {
      print(passNewPosition2.value);
      return passNewPosition2.value;
    }
  }
}
