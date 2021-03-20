import 'dart:ui';
import 'package:flutter/material.dart';
 

void main() => runApp(FrostedGlass());

class FrostedGlass extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( 
        body: new Stack(
          children: <Widget>[
            new Container(
              decoration: BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage('assets/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              // child:new BackdropFilter(
              //   filter: ImageFilter.blur(sigmaX:3.0, sigmaY:3.0),
              //   child: new Container(
              //     decoration: new BoxDecoration(
              //       color:Colors.grey.withOpacity(0.2)
              //     ),
              //   ),                  
              // ),
            ),
            new Center(
              child: new Container(
              child: new BackdropFilter(
                filter: new ImageFilter.blur(sigmaX:20.0, sigmaY:20.0),
                 child: new Container(
                  width: 200.0,
                  height: 200.0,
                  decoration: new BoxDecoration(
                    color: Colors.grey[200].withOpacity(0.5)
                  ),
                  child: new Center(
                    child: new Text(
                      'Frosted', 
                      style:TextStyle(
                        fontSize:35.0,
                        color:Colors.black87,
                      ),
                    ),
                  ),
                ),                
              ),
            ),
            ),         
          ]
        ),
      ),
    );
  }
} 