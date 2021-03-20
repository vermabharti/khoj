import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Extra());
}

class Extra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appName = 'Custom Themes';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: ThemeData(
        // Define the default Brightness and Colors
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600], 
        fontFamily: 'Nobel Regular', 
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w800, color:Color(0xFF1C2833)),
          body1: TextStyle(fontSize: 20.0),
          subtitle: TextStyle(fontSize:25.0, fontWeight: FontWeight.w700, color:Color(0xFF212F3D)),
        ),
      ),
      home: MyHomePage(
        title: appName,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({Key key, @required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
     return Stack(
      children: <Widget>[
        // new Container(
        //   decoration: BoxDecoration(
        //     color: Colors.red,
        //   ),
        // ),
        new Container( 
          //constraints: BoxConstraints.expand(width:48.0),
          //transform: new Matrix4.rotationX(0.8),
          height: double.infinity,
          width: double.infinity,
          decoration:new BoxDecoration(
            color:Color(0xFFf5f2f0)
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: new AppBar( 
            backgroundColor: Colors.transparent, 
            elevation: 0.0,
            title: new Text('Al Choice',
            style: TextStyle(
              color:Color(0xFF1C2833)
            ),), 
            leading: new IconButton(   
              icon: new Icon(Icons.keyboard_backspace),
              color:Color(0xFF808B96), 
              alignment: AlignmentDirectional(2, 0),
              onPressed: () {}, 
            ),
          ),
          body: new Container(
            color: Colors.transparent,
            child: ListView(
              children: <Widget>[
              new Container(
              margin: EdgeInsets.fromLTRB(20, 15, 0, 0),
                child: Text(
                  'Your EveryDay Inspiration',
                  style: Theme.of(context).textTheme.title
                ),
              ),
              new Stack(                 
                children: <Widget>[
                  new Container(                                  
                  width:  550.0,
                  height: 200.0,
                  margin:EdgeInsets.fromLTRB(20, 30, 20, 20),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(15), 
                    boxShadow:[
                      BoxShadow( 
                        color: Colors.black38,
                        blurRadius: 14.0, // has the effect of softening the shadow
                        spreadRadius: 2.0,                         
                        offset: Offset(7.0, 7.0),
                      ),
                    ],           
                    image: DecorationImage(
                      image: AssetImage('assets/background_1.jpg'),
                      colorFilter: new ColorFilter.mode(Colors.blueGrey[600].withOpacity(0.4), BlendMode.lighten),                
                      fit: BoxFit.fill,
                    )
                  ),
                    child: Column(
                      children: <Widget>[
                      new Row(
                      crossAxisAlignment: CrossAxisAlignment.start,  
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[ 
                        new Container(
                          child: new Stack(
                            children: <Widget>[
                              new Container(
                                width:45,
                                height:45,
                                margin: EdgeInsets.fromLTRB(15, 12, 0, 0),
                                alignment: Alignment.topLeft,
                                decoration: BoxDecoration(
                                  border:Border.all(color:Colors.grey[100], width:2),
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage( 
                                    image: AssetImage('assets/himanshu.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ), 
                              ),
                              new Container( 
                              margin: EdgeInsets.fromLTRB(70, 13, 10, 0),
                              child: Column(
                                children: <Widget>[
                                Text(
                                  'Himanshu Verma',
                                  textAlign: TextAlign.justify,
                                  style:TextStyle(
                                    color: Colors.grey[350], 
                                    fontSize: 18,
                                  ),
                                ), 
                                Text(
                                  'CTO at PayMe India',
                                  textAlign: TextAlign.left,
                                  style:TextStyle(
                                    color: Colors.grey[300], 
                                    fontSize: 13,
                                  ),
                                ),
                                ],
                              ),
                            ), 
                            ],
                          ),
                        ),
                        new Container(                       
                        alignment: Alignment.topRight,                     
                        child: new IconButton(   
                          icon: new Icon(Icons.star_border),
                          color:Colors.grey[300],  
                          onPressed: () {}, 
                        ), 
                        ), 
                      ],
                    ),
                      SizedBox(
                        height:70,
                      ),  
                      new Container( 
                        margin: EdgeInsets.fromLTRB(15, 0, 0, 0),  
                        alignment: Alignment(-1, 0),
                        child: Text(  
                      'Where Passion\n and Possibilites meet', 
                      style:TextStyle(color:Colors.grey[300],
                      fontSize: 23.5,
                      ),
                      ),
                    ),
                      ], 
                    ),   
                  ), 
                ]
              ),              
              new Container(
              margin: EdgeInsets.fromLTRB(20, 15, 0, 0),
                child: Text(
                  'Places Visited\nin Delhi and Noida',
                  style: Theme.of(context).textTheme.subtitle
                ),
              ), 
              new Container(
                child:Column(
                  children: <Widget>[
                    new Row(
                      children: <Widget>[
                        Expanded(
                          child: SizedBox(
                            height:240,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                              new Container(
                              width:150,
                              height:190,
                              margin: EdgeInsets.fromLTRB(20, 25, 0, 20),
                              decoration: BoxDecoration(
                                color: Colors.grey[100],                                
                                borderRadius: BorderRadius.circular(10), 
                                boxShadow:[
                                  BoxShadow( 
                                    color: Colors.black26,
                                    blurRadius: 11.0, // has the effect of softening the shadow
                                    spreadRadius: 1.0,                         
                                    offset: Offset(2.0, 2.0),
                                  ),
                                ]                          
                              ),
                              child: new Column( 
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  new Container( 
                                    width:150,
                                    height: 100, 
                                    decoration: BoxDecoration(
                                      borderRadius: new BorderRadius.only(
                                        topLeft:  Radius.circular(9.0),
                                        topRight: Radius.circular(9.0)
                                      ),                                     
                                      image: DecorationImage(
                                        image: AssetImage('assets/infront1.jpg'),
                                        fit: BoxFit.cover
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height:30,
                                  ),
                                  new Container(
                                    margin:EdgeInsets.fromLTRB(30, 0, 25, 0),
                                  child: Text(
                                    'Hello World',
                                    textAlign: TextAlign.center,
                                    style:TextStyle(
                                      fontSize: 18,
                                    )
                                  ),
                                  ),
                                  
                                ]
                              ),
                              ),
                              new Container(
                              width:150,
                              height:190,
                              margin: EdgeInsets.fromLTRB(10, 25, 0, 20),
                              decoration: BoxDecoration(
                                color: Colors.grey[100],                                
                                borderRadius: BorderRadius.circular(10), 
                                boxShadow:[
                                  BoxShadow( 
                                    color: Colors.black26,
                                    blurRadius: 11.0, // has the effect of softening the shadow
                                    spreadRadius: 1.0,                         
                                    offset: Offset(2.0, 2.0),
                                  ),
                                ]                          
                              ),
                              child: new Column( 
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  new Container( 
                                    width:150,
                                    height: 100, 
                                    decoration: BoxDecoration(
                                      borderRadius: new BorderRadius.only(
                                        topLeft:  Radius.circular(9.0),
                                        topRight: Radius.circular(9.0)
                                      ),                                     
                                      image: DecorationImage(
                                        image: AssetImage('assets/infront1.jpg'),
                                        fit: BoxFit.cover
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height:30,
                                  ),
                                  new Container(
                                    margin:EdgeInsets.fromLTRB(30, 0, 25, 0),
                                  child: Text(
                                    'Hello World',
                                    textAlign: TextAlign.center,
                                    style:TextStyle(
                                      fontSize: 18,
                                    )
                                  ),
                                  ),
                                  
                                ]
                              ),
                              ),
                              new Container(
                              width:150,
                              height:190,
                              margin: EdgeInsets.fromLTRB(10, 25, 20, 20),
                              decoration: BoxDecoration(
                                color: Colors.grey[100],                                
                                borderRadius: BorderRadius.circular(10), 
                                boxShadow:[
                                  BoxShadow( 
                                    color: Colors.black26,
                                    blurRadius: 11.0, // has the effect of softening the shadow
                                    spreadRadius: 1.0,                         
                                    offset: Offset(2.0, 2.0),
                                  ),
                                ]                          
                              ),
                              child: new Column( 
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  new Container( 
                                    width:150,
                                    height: 100, 
                                    decoration: BoxDecoration(
                                      borderRadius: new BorderRadius.only(
                                        topLeft:  Radius.circular(9.0),
                                        topRight: Radius.circular(9.0)
                                      ),                                     
                                      image: DecorationImage(
                                        image: AssetImage('assets/infront2.jpeg'),
                                        fit: BoxFit.cover
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height:20,
                                  ),
                                  new Container(
                                    margin:EdgeInsets.fromLTRB(25, 5, 25, 0),
                                  child: Text(
                                    'Hello Himanshu',
                                    textAlign: TextAlign.center,
                                    style:TextStyle(
                                      fontSize: 18,
                                    )
                                  ),
                                  ),
                                  
                                ]
                              ),
                              ),
                              ],
                            )
                          )
                        ) 
                              
                      ],
                    ),
                  ],
                ),
              ),
              ],
            ),
          ),
      ),
    ]
  );
  }
}






 