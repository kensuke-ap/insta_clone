import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:insta_clone/design.dart';

class NeumorphicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neumorphic App',
      theme: ThemeData(
        backgroundColor: Colors.blueGrey.shade200,
        scaffoldBackgroundColor: Colors.blueGrey.shade200,
        dialogBackgroundColor: Colors.blueGrey.shade200,
      ),
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade200,
        body: Center(
          child:
          NeumorphicContainer(
              child: Text('Neumorphic'),
          ),
      ),
    ));
  }
}

class NeumorphicContainer extends StatelessWidget {
  final Widget child;

  final double bevel;

  final Color color;

  final Offset blurOffset;

  NeumorphicContainer({
    Key key,
    this.child,
    this.bevel = 10.0,
    this.color,
  })  : this.blurOffset = Offset(bevel / 2, bevel / 2),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = this.color ?? Theme.of(context).backgroundColor;
    return Container(
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                color.mix(Colors.black, .1),
                color,
                color,
                color.mix(Colors.white, .5),
              ],
              stops: [
                0.0,
                .3,
                .6,
                1.0,
              ]
          ),
          borderRadius: BorderRadius.circular(bevel),
          color: Colors.grey.shade200,
          boxShadow: [
            BoxShadow(
              blurRadius: bevel,
              offset: -blurOffset,
              color: color.mix(Colors.white, .6),
            ),
            BoxShadow(
                blurRadius: bevel,
                offset: blurOffset,
              color: color.mix(Colors.black, .3),
            )
          ]),
      child: child,
    );
  }
}

extension ColorUtils on Color {
Color mix(Color another, double amount) {
  return Color.lerp(this, another, amount);
}
}

class MySmartHome extends StatelessWidget {
  final Design design;

  const MySmartHome({Key key, this.design}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFe6ebf2),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).viewPadding.top + 10,
              ),
              Text(
                "MyHome",
                style: TextStyle(
                  letterSpacing: 1.5,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "nunito",
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Design(
                        height1: 55,
                        width1: 55,
                        color: Color(0xFFe6ebf2),
                        offsetB: Offset(-2, -2),
                        offsetW: Offset(2, 2),
                        bLevel: 3.0,
                        iconData: Icons.wifi,
                        iconSize: 30.0,
                      ),
                      Design(
                        height1: 55,
                        width1: 55,
                        color: Color(0xFFe6ebf2),
                        offsetB: Offset(-2, -2),
                        offsetW: Offset(2, 2),
                        bLevel: 5.0,
                        iconData: FontAwesome.lightbulb_o,
                        iconSize: 30.0,
                      ),
                      Design(
                        height1: 55,
                        width1: 55,
                        color: Color(0xFFe6ebf2),
                        offsetB: Offset(-2, -2),
                        offsetW: Offset(2, 2),
                        bLevel: 5.0,
                        iconData: Icons.home,
                        iconSize: 30.0,
                      ),
                      Design(
                        height1: 55,
                        width1: 55,
                        color: Color(0xFFe6ebf2),
                        offsetB: Offset(-2, -2),
                        offsetW: Offset(2, 2),
                        bLevel: 5.0,
                        iconData: FontAwesome.thermometer_quarter,
                        iconSize: 30.0,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFFe6ebf2),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(-3, -3),
                          blurRadius: 3.0,
                          color: Colors.white.withOpacity(.7)),
                      BoxShadow(
                          offset: Offset(3, 3),
                          blurRadius: 3.0,
                          color: Colors.black.withOpacity(.15))
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFFe6ebf2)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFe6ebf2),
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(-2, -2),
                                  blurRadius: 2.0,
                                  color: Colors.black.withOpacity(.3)),
                              BoxShadow(
                                  offset: Offset(2, 2),
                                  blurRadius: 2.0,
                                  color: Colors.white.withOpacity(.7)),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFe6ebf2),
                                shape: BoxShape.circle),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xFFDCE7F1),
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(-2, -2),
                                          blurRadius: 2.0,
                                          color: Colors.black.withOpacity(.3)),
                                      BoxShadow(
                                          offset: Offset(2, 2),
                                          blurRadius: 2.0,
                                          color: Colors.white.withOpacity(.7)),
                                    ]),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Tempreture",
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(.6),
                                          fontFamily: "nunito",
                                          fontSize: 20.0),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      "20°C",
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(.6),
                                          fontFamily: "nunito",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Container(
                    height: 90.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xFFe6ebf2),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5.0,
                              offset: Offset(-3, -3),
                              color: Colors.white.withOpacity(.7)),
                          BoxShadow(
                              blurRadius: 5.0,
                              offset: Offset(3, 3),
                              color: Colors.black.withOpacity(.15))
                        ]),
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                  color: Color(0xFFe6ebf2),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 5.0,
                                        offset: Offset(-3, -3),
                                        color: Colors.white.withOpacity(.7)),
                                    BoxShadow(
                                        blurRadius: 5.0,
                                        offset: Offset(3, 3),
                                        color: Colors.black.withOpacity(.15))
                                  ]),
                              child: Icon(
                                FontAwesome.leaf,
                                color: Colors.black.withOpacity(.5),
                                size: 30.0,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Humidity",
                                  style: TextStyle(
                                      fontFamily: "nunito",
                                      color: Colors.black.withOpacity(.5),
                                      fontSize: 15.0)),
                              Text("65%",
                                  style: TextStyle(
                                      fontFamily: "nunito",
                                      color: Colors.black.withOpacity(.5),
                                      fontSize: 15.0))
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Container(
                    height: 90.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xFFe6ebf2),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5.0,
                              offset: Offset(-3, -3),
                              color: Colors.white.withOpacity(.7)),
                          BoxShadow(
                              blurRadius: 5.0,
                              offset: Offset(3, 3),
                              color: Colors.black.withOpacity(.15))
                        ]),
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                  color: Color(0xFFe6ebf2),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 5.0,
                                        offset: Offset(-3, -3),
                                        color: Colors.white.withOpacity(.7)),
                                    BoxShadow(
                                        blurRadius: 5.0,
                                        offset: Offset(3, 3),
                                        color: Colors.black.withOpacity(.15))
                                  ]),
                              child: Icon(
                                Icons.wifi,
                                color: Colors.black.withOpacity(.5),
                                size: 30.0,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("Speed",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(.5),
                                      fontFamily: "nunito",
                                      fontSize: 15.0)),
                              Text("20mbps",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(.5),
                                      fontFamily: "nunito",
                                      fontSize: 15.0))
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Current Tempreture",
                            style: TextStyle(
                                color: Colors.black.withOpacity(.5),
                                fontFamily: "nunito",
                                fontSize: 15.0)),
                        Text("20°C",
                            style: TextStyle(
                                color: Colors.black.withOpacity(.6),
                                fontFamily: "nunito",
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}