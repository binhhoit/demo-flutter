import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:flutter_app3/AnimationScreenTwo.dart';
import 'package:flutter_test/flutter_test.dart';

class AnimationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.deepOrange,
          title: new Text("Animation Screen"),
        ),
        body: new ContentScreenAnimation());
  }
}

class ContentScreenAnimation extends StatefulWidget {
  ContentScreenAnimation({Key key}) : super(key: key);

  @override
  _ContentScreenAnimation createState() => new _ContentScreenAnimation();
}

class _ContentScreenAnimation extends State<ContentScreenAnimation>
    with SingleTickerProviderStateMixin {

  //controller manager all animation in 1 secstion
  AnimationController _loginButtonController;

  Animation buttonSqueezeAnimation;
  Animation buttonZoomOut;

  @override
  void initState() {
    super.initState();
    _loginButtonController = new AnimationController(
      duration: new Duration(milliseconds: 3000),
      vsync: this,
    );

    //zoon in
    buttonSqueezeAnimation = new Tween(
      begin: 320.0,
      end: 70.0,
    ).animate(new CurvedAnimation(
        parent: _loginButtonController, curve: new Interval(0.0, 0.250)));

    //zoom out

    buttonZoomOut = new Tween(
      begin: 70.0,
      end: 300.0,
    ).animate(new CurvedAnimation(
      parent: _loginButtonController,
      curve: new Interval(0.550, 0.900, curve: Curves.bounceOut),
    ));
    
    _loginButtonController.addListener((){
        if(_loginButtonController.isCompleted){
          Navigator.push(context, new MaterialPageRoute(builder:(context) =>new AnimationScreenTwo()));
        }
    });

//    _loginButtonController
//      ..addListener(() {
//        setState(() {});
//      })
//      ..forward();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new GestureDetector(
          onTap: () {
            _playAnimation();
            _loginButtonController
              ..addListener(() {
                setState(() {});
              })
              ..forward();
            print("run animation");
          },
          child: new Container(
              margin: new EdgeInsets.only(top: 200.0, left: 20.0),
              width: buttonZoomOut.value == 70
                  ? buttonSqueezeAnimation.value
                  : buttonZoomOut.value,
              height: buttonZoomOut.value == 70 ? 60.0 : buttonZoomOut.value,
              alignment: FractionalOffset.center,
              decoration: new BoxDecoration(
                color: const Color.fromRGBO(247, 64, 106, 1.0),
                borderRadius: new BorderRadius.all(const Radius.circular(30.0)),
              ),
              child: buttonSqueezeAnimation.value > 75.0
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
                    )),
        )
      ],
    );
  }

  Future<Null> _playAnimation() async {
    try {
      await _loginButtonController.forward();
      await _loginButtonController.reverse();
    } on TickerCanceled {}
  }
}
