import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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








/*** ANIMATION CLASS  CODE */
class Animation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'The Boring Star',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new FlareActor("assets/logo.flr",
        alignment: Alignment.center,
        fit: BoxFit.contain,
        animation: "wallet");
  }
}


/****BOTTOM SIMPLE APP BAR */
class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( 
           floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.swap_horiz), 
            backgroundColor:Color(0xFF0CBABA),
            onPressed: () {},),
            bottomNavigationBar: BottomAppBar(
              shape: CircularNotchedRectangle(),
              notchMargin: 6.0,
              child: new Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,            
              children: <Widget>[
              IconButton(icon: Icon(Icons.apps,), color:Color(0xFFBBBBBB), onPressed: () {},),
              IconButton(icon: Icon(Icons.description), color:Color(0xFFBBBBBB), onPressed: () {},), 
              IconButton(icon: Icon(Icons.person), color:Color(0xFFBBBBBB), onPressed: () {},),
              IconButton(icon: Icon(Icons.menu), color:Color(0xFFBBBBBB), onPressed: () {},),
              ],
            ),
          ),
      ),     
    
    );
  }
}


/**** FROSTED GLASS CODE*/
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




/*****LOGIN PAGE CODE */
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Transition Animation Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => new _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('First Page'),
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text('Goto Second Page'),
          onPressed: () {
            Navigator.of(context).push(new SecondPageRoute());
          },
        ),
      ),
    );
  }
}

class SecondPageRoute extends CupertinoPageRoute {
  SecondPageRoute()
      : super(builder: (BuildContext context) => new SecondPage());


  // OPTIONAL IF YOU WISH TO HAVE SOME EXTRA ANIMATION WHILE ROUTING
  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return new FadeTransition(opacity: animation, child: new SecondPage());
  }
}

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => new _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        //backgroundColor: Color(0xFFffffff),
        //title: new Text('Second Page'),
      ),
      body: new Center(
        child: new Text('This is the second page'),
      ),
    );
  }
}