import 'dart:ui' as ui;
import 'package:khoj/MockDataDefine.dart';
import 'package:khoj/paymeindiadetail_animation.dart'; 
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class PaymeDetailsPage extends StatelessWidget {
  PaymeDetailsPage({
    //@required this.basic,
    @required AnimationController controller,
  }) : animation = new PaymeDetailsEnterAnimation(controller);

  //final Basic basic;
  final PaymeDetailsEnterAnimation animation;

  Widget _buildAnimation(BuildContext context, Widget child) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Opacity(
          opacity: animation.backdropOpacity.value,
          child: new Container(
            color: Color(0xFF0cbaba),
          ), 
        ),  new Container( 
            child: _buildContent(), 
        ),
      ],
    );
  }

  Widget _buildContent() {
    return new SingleChildScrollView(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _buildAvatar(),
          _buildInfo(), 
        ],
      ),
    );
  }

  Widget _buildAvatar() {
    return new Transform(
      transform: new Matrix4.diagonal3Values(
        animation.avatarSize.value,
        animation.avatarSize.value,
        1.0,
      ),
      alignment: Alignment.center,
      child: new Container(
        width: 80.0,
        height: 80.0, 
        margin: const EdgeInsets.only(top: 32.0,),
        padding: const EdgeInsets.all(3.0),
         
          child: new Image.asset(basic.avatar),
         
      ),
    );
  }

  Widget _buildInfo() {
    return new Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Container(
            child:new Text(
            basic.heading,
            textAlign: TextAlign.center,
            //basic.heading + '\n' + basic.subHeading,
            style: new TextStyle(
              color: Colors.white.withOpacity(animation.nameOpacity.value),
              fontWeight: FontWeight.bold,
              fontSize: 32.0,
            ),
          ),
          ),
          new Container(
            margin:EdgeInsets.only(top:30),
            child:new Text(
            basic.subHeading,
            textAlign: TextAlign.center,
            style: new TextStyle(
              fontSize: 22,
              color: Colors.white.withOpacity(animation.locationOpacity.value),
              fontWeight: FontWeight.w500,
            ),
          ),
          ),          
          new Container( 
            margin:EdgeInsets.only(top:80),
            width: animation.dividerWidth.value,
            height:50,
            //color: Colors.white.withOpacity(0.85), 
             child:new RaisedButton(
                padding: const EdgeInsets.all(10), 
                color: Colors.white,
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                child: new Text("Hi, PayMeIndia!",
                style: TextStyle(
                  fontSize: 16,
                  color:Color(0xFF0cbaba),
                  fontWeight: FontWeight.w500,
                ),
                ), 
                onPressed: () {},
                //style: Theme.of(context).textTheme.button),
              ),
          ),
          new Container(
            margin:EdgeInsets.only(top:65),
            child:new Text(
            basic.extraHeading,
            style: new TextStyle(
              fontSize: 15,
              color: Colors.white.withOpacity(animation.biographyOpacity.value),
              height: 1.4,
            ),
          ),
          ),
          new Container(
            margin:EdgeInsets.only(top:40),
            child:new Text(
              basic.footerHeading,
              textAlign: TextAlign.center,
              style: new TextStyle(
                fontSize: 14,
                color: Colors.white.withOpacity(animation.biographyOpacity.value),
                height: 1.4,
              ),
            ),
          ),          
        ],
      ),
    );
  }
 
  @override
  Widget build(BuildContext context) {
    return new Scaffold(    
      body: new AnimatedBuilder(
        animation: animation.controller,
        builder: _buildAnimation,
      ),
    );
  }
}