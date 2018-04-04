import 'package:flutter/material.dart';
import 'package:flutter_app3/ColorsCustoms.dart';

class ExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: ColorsCustoms.seafoam_blue_two,
          title: new Center(
            child: new Text(
              "Thông tin của bé",
              style: new TextStyle(
                  fontSize: 16.3,
                  color: Colors.white,
                  fontFamily: 'SFUIDisplay_Bold'),
            ),
          ),
        ),
        body: new ContentScreenExample());
  }
}

class ContentScreenExample extends StatefulWidget {
  ContentScreenExample({Key key}) : super(key: key);

  @override
  _ContentScreenExample createState() => new _ContentScreenExample();
}

class _ContentScreenExample extends State<ContentScreenExample> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView(
      children: <Widget>[
        new Column(
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Container(
                        margin: new EdgeInsets.symmetric(
                            vertical: 9.5, horizontal: 7.7),
                        width: 23.0,
                        height: 23.0,
                        child: new Material(
                          borderRadius: new BorderRadius.circular(25.0),
                          color: ColorsCustoms.pinkish_orange_two,
                          child: new Center(
                            child: new Text("1",
                                style: new TextStyle(color: Colors.white)),
                          ),
                        )),
                    new Container(
                        margin: new EdgeInsets.symmetric(vertical: 12.5),
                        child: new Center(
                          child: new Text(
                            "Thông tin chung",
                            style: new TextStyle(
                                color: ColorsCustoms.charcoal_grey_three,
                                fontSize: 13.5),
                          ),
                        ))
                  ],
                ),
                new Row(
                  children: <Widget>[
                    new Container(
                        margin: new EdgeInsets.symmetric(
                            vertical: 9.5, horizontal: 7.7),
                        width: 23.0,
                        height: 23.0,
                        child: new Material(
                          borderRadius: new BorderRadius.circular(25.0),
                          color: ColorsCustoms.pinkish_orange_two,
                          child: new Center(
                            child: new Text("2",
                                style: new TextStyle(color: Colors.white)),
                          ),
                        )),
                    new Container(
                        margin: new EdgeInsets.symmetric(vertical: 12.5),
                        child: new Center(
                          child: new Text(
                            "Kiểm tra",
                            style: new TextStyle(
                                color: ColorsCustoms.charcoal_grey_three,
                                fontSize: 13.5,
                                fontFamily: 'SFUIDisplay_Regular'),
                          ),
                        ))
                  ],
                ),
                new Row(
                  children: <Widget>[
                    new Container(
                        margin: new EdgeInsets.symmetric(
                            vertical: 9.5, horizontal: 7.7),
                        width: 23.0,
                        height: 23.0,
                        child: new Material(
                          borderRadius: new BorderRadius.circular(25.0),
                          color: ColorsCustoms.pinkish_orange_two,
                          child: new Center(
                            child: new Text("3",
                                style: new TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'SFUIDisplay_Bold')),
                          ),
                        )),
                    new Container(
                        margin: new EdgeInsets.symmetric(vertical: 12.5),
                        child: new Center(
                          child: new Text(
                            "Tổng quan",
                            style: new TextStyle(
                                color: ColorsCustoms.charcoal_grey_three,
                                fontSize: 13.5,
                                fontFamily: 'SFUIDisplay_Bold'),
                          ),
                        ))
                  ],
                )
              ],
            ),
            new Container(
              height: 1.0,
              color: ColorsCustoms.white_eight,
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Container(
                  width: 76.8,
                  height: 76.8,
                  margin: new EdgeInsets.only(
                      left: 14.4, top: 11.5, bottom: 11.5, right: 8.7),
                  child: new CircleAvatar(
                    backgroundImage: new AssetImage("images/a.jpg"),
                    radius: 100.0,
                  ),
                ),
                new Container(
                    child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Container(
                      child: new Text("Nguyễn Văn Bi",
                          style: new TextStyle(
                            color: ColorsCustoms.charcoal_grey,
                            fontSize: 15.4,
                            fontFamily: 'SFUIText_Bold',
                          )),
                    ),
                    new Row(
                      children: <Widget>[
                        new Row(children: <Widget>[
                          new Container(
                            child: new Text("Ngày sinh:",
                                style: new TextStyle(
                                  color: ColorsCustoms.charcoal_grey,
                                  fontSize: 13.4,
                                  fontFamily: 'SFUIDisplay_Regular',
                                )),
                          ),
                          new Container(
                            margin: new EdgeInsets.only(left: 5.0),
                            child: new Text("2/12/2012",
                                style: new TextStyle(
                                  color: ColorsCustoms.charcoal_grey,
                                  fontSize: 13.4,
                                  fontFamily: 'SFUIDisplay_Bold',
                                )),
                          ),
                        ]),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        new Row(children: <Widget>[
                          new Container(
                            child: new Text("Chiều cao:",
                                style: new TextStyle(
                                  color: ColorsCustoms.charcoal_grey,
                                  fontSize: 13.4,
                                  fontFamily: 'SFUIDisplay_Regular',
                                )),
                          ),
                          new Container(
                            margin: new EdgeInsets.only(left: 5.0),
                            child: new Text("90 cm",
                                style: new TextStyle(
                                  color: ColorsCustoms.charcoal_grey,
                                  fontSize: 13.4,
                                  fontFamily: 'SFUIDisplay_Bold',
                                )),
                          ),
                        ]),
                      ],
                    )
                  ],
                )),
                new Container(
                    margin: new EdgeInsets.only(left: 15.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          height: 20.0,
                        ),
                        new Row(
                          children: <Widget>[
                            new Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  new Container(
                                    child: new Text("Giới tính:",
                                        style: new TextStyle(
                                          color: ColorsCustoms.charcoal_grey,
                                          fontSize: 13.4,
                                          fontFamily: 'SFUIDisplay_Regular',
                                        )),
                                  ),
                                  new Container(
                                    margin: new EdgeInsets.only(left: 5.0),
                                    child: new Text("Nam",
                                        style: new TextStyle(
                                          color: ColorsCustoms.charcoal_grey,
                                          fontSize: 13.4,
                                          fontFamily: 'SFUIDisplay_Bold',
                                        )),
                                  ),
                                ]),
                          ],
                        ),
                        new Row(
                          children: <Widget>[
                            new Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  new Container(
                                    child: new Text("Cân năng:",
                                        style: new TextStyle(
                                          color: ColorsCustoms.charcoal_grey,
                                          fontSize: 13.4,
                                          fontFamily: 'SFUIDisplay_Regular',
                                        )),
                                  ),
                                  new Container(
                                    margin: new EdgeInsets.only(left: 5.0),
                                    child: new Text("10 kg",
                                        style: new TextStyle(
                                          color: ColorsCustoms.charcoal_grey,
                                          fontSize: 13.4,
                                          fontFamily: 'SFUIDisplay_Bold',
                                        )),
                                  ),
                                ]),
                          ],
                        )
                      ],
                    ))
              ],
            ),
            new Container(
              height: 1.0,
              color: ColorsCustoms.white_eight,
            ),
            new Container(
              height: 198.1,
              width: MediaQuery.of(context).size.width,
              margin: new EdgeInsets.all(13.4),
              child: new Material(
                color: ColorsCustoms.white_nine,
                shape: new OutlineInputBorder(
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(9.6)),
                    borderSide: new BorderSide(
                        color: ColorsCustoms.pale_grey_three, width: 1.0)),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Container(
                      margin: new EdgeInsets.only(
                          left: 18.2, top: 13.4, bottom: 3.0),
                      child: new Text(
                        "Tổng điểm kiểm tra",
                        style: new TextStyle(
                            fontFamily: 'SFUIText_Bold',
                            fontSize: 17.3,
                            color: ColorsCustoms.charcoal_grey),
                      ),
                    ),
                    new Container(
                      margin: new EdgeInsets.only(left: 18.2, bottom: 9.0),
                      child: new Text(
                        "12/12/2017",
                        style: new TextStyle(
                            fontFamily: 'SFUIText_Regular',
                            fontSize: 13.4,
                            color: ColorsCustoms.warm_grey_six),
                      ),
                    ),
                    new Container(
                      height: 1.0,
                      color: ColorsCustoms.white_eight,
                    ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            new Container(
                              margin: new EdgeInsets.only(top: 11.5),
                              width: 68.2,
                              height: 68.2,
                              child: new CircleAvatar(
                                  backgroundColor:
                                      ColorsCustoms.pinkish_orange_two,
                                  child: new Center(
                                    child: new Text(
                                      "5",
                                      style: new TextStyle(
                                          color: Colors.white, fontSize: 40.3),
                                    ),
                                  )),
                            ),
                            new Container(
                              margin: new EdgeInsets.only(top: 5.0),
                              child: new Text(
                                "(Trên 5 điểm)",
                                style: new TextStyle(
                                    color: ColorsCustoms.charcoal_grey,
                                    fontSize: 12.5,
                                    fontFamily: 'SFUIText_Bold'),
                              ),
                            )
                          ],
                        ),
                        new Container(
                          width: 1.0,
                          height: 95.0,
                          color: ColorsCustoms.pale_grey_three,
                        ),
                        new Container(
                          width: 120.0,
                          child: new Text(
                            "Kiểm tra kế tiếp:\n ngày 12/02/2018\n(24 tháng tuổi)",
                            style: new TextStyle(
                                color: ColorsCustoms.charcoal_grey,
                                fontSize: 12.5,
                                fontFamily: 'SFUIText_Bold'),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            new Stack(
              alignment: const Alignment(0.0, 0.5),
              children: <Widget>[
                new Container(
                  width: MediaQuery.of(context).size.width,
                  margin: new EdgeInsets.only(
                      left: 13.4, right: 13.4, top: 13.4, bottom: 100.0),
                  child: new Material(
                    color: ColorsCustoms.white_nine,
                    shape: new OutlineInputBorder(
                        borderRadius:
                            new BorderRadius.all(new Radius.circular(9.6)),
                        borderSide: new BorderSide(
                            color: ColorsCustoms.pale_grey_three, width: 1.0)),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          margin: new EdgeInsets.only(
                              left: 18.2, top: 19.2, bottom: 8.6, right: 22.1),
                          child: new Text(
                            "Chúc mừng bé đã đạt được các mốc phát triển bình thường theo tuổi. ",
                            style: new TextStyle(
                                fontFamily: 'SFUIText_Bold',
                                fontSize: 13.4,
                                color: ColorsCustoms.greyish_brown_three,
                                height: 1.3),
                          ),
                        ),
                        new Container(
                          margin: new EdgeInsets.only(
                              left: 18.2, bottom: 9.0, right: 30.7),
                          child: new Text(
                            "Bạn hãy cùng bé khám phá các bài tập trí tuệ của Kiddi nhé, và hãy quay lại làm kiểm tra khi bé được 24 tháng tuổi",
                            style: new TextStyle(
                                fontFamily: 'SFUIText_Regular',
                                fontSize: 13.4,
                                color: ColorsCustoms.charcoal_grey_two,
                                height: 1.3),
                          ),
                        ),
                        new Container(
                          height: 176.6,
                          color: ColorsCustoms.transparent,
                        ),
                      ],
                    ),
                  ),
                ),
                new Container(
                  width: 265.9,
                  height: 244.8,
                  child: new Image(image: new AssetImage("images/b.png")),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
