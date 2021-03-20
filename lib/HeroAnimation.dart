import 'package:flutter/material.dart';
import 'package:khoj/CustomRoute.dart';
import 'package:khoj/heromainpage.dart';
import 'dart:async';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => new _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin 
{

  Animation<double> _mainLogoAnimation;
  AnimationController _mainLogoAnimationController;

  @override
  void initState() {
    super.initState();
    goToHomePage();
    _mainLogoAnimationController = new AnimationController(duration: new Duration(milliseconds: 1500) ,vsync: this);
    _mainLogoAnimation = new CurvedAnimation(parent: 
    _mainLogoAnimationController, curve: Curves.easeIn);
    _mainLogoAnimation.addListener(() => (this.setState(() {})));
    _mainLogoAnimationController.forward();
  }

  Future goToHomePage() async {
    await new Future.delayed(const Duration(milliseconds: 3000));
    Navigator.of(context).push(new AppPageRoute(builder: (BuildContext context) => new HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Color(0xFFffb600),
      child: new Center(
        child: new Opacity(
          opacity: 1.0 * _mainLogoAnimation.value,
          child: new Hero(
            tag: 'logo_black',
            child: new Image(
              image: new AssetImage('assets/images/logo-black.png'),
              width: 300.0
            )
          )
        )
      )
    );
  }
}