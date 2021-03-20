import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:khoj/fullscreendrawer.dart';

void main() => runApp(KLogin());

class KLoginRoute extends CupertinoPageRoute {
  KLoginRoute() : super(builder: (BuildContext context) => new KLogin());
  @override
  Widget buildPage(
    BuildContext context, 
    Animation<double> animation,
    Animation<double> secondaryAnimation) {
      return new FadeTransition(opacity: animation, child: new KLogin());     
    }
  }

class KLogin extends StatefulWidget {  
  @override
  _KLoginState createState() => new _KLoginState();
}

class _KLoginState extends State<KLogin> { 
   static final List<String> _listViewData = [   
    "Flutter Dev",
    "Android Dev",
    "iOS Dev!",
    "React Native Dev!",
    "React Dev!",
    "express Dev!",
    "Laravel Dev!",
    "Angular Dev!",
  ]; 
  var _alignment = Alignment.bottomCenter;
  @override  
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
    return MaterialApp(  
      home: Scaffold(
        appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFfafafa),
        // title: Text("Menu", style:TextStyle(
        //   color:Color(0xFF000000),
        // )), 
        iconTheme: IconThemeData(
          color: Color(0xFF000000),
        ),         
      ),
       drawer: SizedBox(        
        width: size.width,
        child: Drawer(
          child: Container(
            color: Color(0xFFffb600),
            child: ListView(              
              padding: EdgeInsets.all(10.0),     
                children: _listViewData
                  .map((data) => ListTile(
                    title: Text(data),
                  ))                      
                  .toList(),                            
                ),
              ),
            ),
          ),
        body: AnimatedContainer(
        padding: EdgeInsets.all(10.0),
        duration: Duration(seconds: 2),
        alignment: _alignment,
        child: Container(
          height: 50.0,
          child: Icon(Icons.airplanemode_active, size: 50.0, color: Colors.blueAccent,),
        ),
      ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blueAccent,
          onPressed: (){
            setState(() {
              _alignment = Alignment.center;
            });
          },
          icon: Icon(Icons.airplanemode_active),
          label: Text("Take Flight")),
      ),          
    );
  }
}
 