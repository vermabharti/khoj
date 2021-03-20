import 'package:flutter/material.dart';
import 'package:khoj/kdetail.dart';
import 'package:khoj/klogin.dart'; 

void main() => runApp(new Login());

class Login extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold( 
        body: new Container(
          constraints: BoxConstraints.expand(),
          //color: Colors.tealAccent,
          child: new Stack(
            children: [              
              Positioned(
                 child: Container( 
                    width:100,
                    height:100,
                    decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                    image: AssetImage('assets/images/travel3.jpg'),
                    colorFilter: new ColorFilter.mode(Colors.black38.withOpacity(0.5), BlendMode.lighten),
                    fit: BoxFit.fill, 
                  ),
                ),  
                ),
                top: -20.0,
                left: -20.0,
              ),
              Positioned(
                child: Container( 
                  width:160,
                  height:160,
                  decoration: BoxDecoration(
                    boxShadow:[
                      BoxShadow( 
                        color: Colors.black26,
                        blurRadius:12.0, // has the effect of softening the shadow
                        spreadRadius:1.0,                         
                        offset: Offset(4.0, 4.0),
                      ),
                    ],
                    shape: BoxShape.circle,
                    image: DecorationImage(
                    image: AssetImage('assets/images/travel2.jpg'),
                    colorFilter: new ColorFilter.mode(Colors.black45.withOpacity(0.5), BlendMode.lighten),
                    fit: BoxFit.fill, 
                  ),
                ),  
                ),
                top: -40.0,
                right: -40.0,
              ),
              Positioned(
                child: Container( 
                  width:175,
                  height:175,
                  decoration: BoxDecoration(
                  boxShadow:[
                    BoxShadow( 
                      color: Colors.black12,
                      blurRadius:12.0, // has the effect of softening the shadow
                      spreadRadius:1.0,                         
                      offset: Offset(4.0, 4.0),
                    ),
                  ],
                  shape: BoxShape.circle,
                  image: DecorationImage(
                  image: AssetImage('assets/images/travel5.jpg'),
                  colorFilter: new ColorFilter.mode(Colors.black45.withOpacity(0.5), BlendMode.lighten),
                  fit: BoxFit.fill, 
                ),
              ),  
              ),
                top: 60.0,
                left:60.0,
              ),
              Positioned(
                child: Container( 
                  width:155,
                  height:155,
                  decoration: BoxDecoration(
                  boxShadow:[
                    BoxShadow( 
                      color: Colors.black26,
                      blurRadius:12.0, // has the effect of softening the shadow
                      spreadRadius:1.0,                         
                      offset: Offset(4.0, 4.0),
                    ),
                  ],
                  shape: BoxShape.circle,
                  image: DecorationImage(
                  image: AssetImage('assets/images/travel6.jpg'),
                  colorFilter: new ColorFilter.mode(Colors.black45.withOpacity(0.5), BlendMode.lighten),
                  fit: BoxFit.fill, 
                ),
              ),  
              ),
                top:170.0,
                right:-50.0,
              ),
              Positioned(
                child: Container( 
                  width:240,
                  height:240,
                  decoration: BoxDecoration(
                  boxShadow:[
                    BoxShadow( 
                      color: Colors.black26,
                      blurRadius:12.0, // has the effect of softening the shadow
                      spreadRadius:1.0,                         
                      offset: Offset(4.0, 4.0),
                    ),
                  ],
                  shape: BoxShape.circle,
                  image: DecorationImage(
                  image: AssetImage('assets/images/travel7.jpg'),
                  colorFilter: new ColorFilter.mode(Colors.black45.withOpacity(0.5), BlendMode.lighten),
                  fit: BoxFit.fill, 
                ),
              ),  
              ),
                bottom:180.0,
                left:-45.0,
              ),
              Positioned(
                 child: Container( 
                    width:70,
                    height:70,
                    decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                    image: AssetImage('assets/images/travel3.jpg'),
                    colorFilter: new ColorFilter.mode(Colors.black38.withOpacity(0.5), BlendMode.lighten),
                    fit: BoxFit.fill, 
                  ),
                ),  
                ),
                bottom:230.0,
                right: 55.0,
              ),
              Positioned(                      
                child: Text(
                'Share your best Photos with\n the community',
                style: Theme.of(context).textTheme.subtitle
                ), 
                bottom:85.0,
                left: 20.0,
              ),
              Positioned(  
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  new Container( 
                  child: new OutlineButton(  
                    padding: const EdgeInsets.all(8.0),                 
                    child: new Text("Login",
                    style: Theme.of(context).textTheme.button),
                    color:Color(0xFF000000),
                    onPressed: () {
                      Navigator.of(context).push(new KLoginRoute());
                    },                  
                    shape: new StadiumBorder(),
                  ),
                  ),
                  ]
                ),
                bottom:12.0,
                left: 20.0,             
              ),                           
              Positioned(  
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  new Container(
                    //padding:EdgeInsets.only(right:20,top:30),
                    child:new RaisedButton(
                      padding: const EdgeInsets.all(10), 
                      color: Theme.of(context).buttonTheme.colorScheme.primary,
                      onPressed: () {
                        Navigator.of(context).push(new DetailRoute());
                      },
                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                      child: new Text("Signup",
                      style: Theme.of(context).textTheme.button),
                    ),
                  ),
                  ],
                ),
                bottom:12.0,
                right: 20.0,             
              ), 
            ],
          ),
        ),
      ),
    );
  }
}