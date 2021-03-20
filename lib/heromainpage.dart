import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

 
 
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}
class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  Animation<double> boxAnimation;
  AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: Duration(seconds: 5), vsync: this)..forward();
    boxAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(
          0,
          1,
          curve: Curves.decelerate,
        ),
      ),
    );
  }
   
  @override 
  Widget build(BuildContext context) { 
    return new Scaffold( 
      body: new Container(
      color: Color(0xFFf9f9f9),
      width: double.infinity,
      child:ListView(
        children: <Widget>[
          Row(
          children: <Widget>[
            new Container(
              margin:EdgeInsets.only(top:20),
              child: new Hero(
                tag: 'logo_black',
                child: new Image(
                  image: new AssetImage('assets/images/logo-black.png'),
                  width: 150.0
                )
              )
            ),   
          ],
        ),
          Row(  
            children:<Widget>[
                new ScaleTransition(
              scale: boxAnimation,
              child: new Container(
                decoration: new BoxDecoration(
                    color: Color(0XFFEC3457), shape: BoxShape.circle),
                height: 90.0,
                width: 90.0,
              ),
          ),
        ]
       ),
        ]  
      ),
      ),
    );
  }
}

 
 