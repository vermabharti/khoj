import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; 

void main() => runApp(new MainTabBar());

class MainTabBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MyAppState();
}

class MyAppState extends State<MainTabBar> {
 
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: new DefaultTabController(
        length: 3,
        child: new Scaffold(
          appBar: new PreferredSize(
            preferredSize: Size.fromHeight(48.0),
            child:Transform.translate(
              offset: Offset(0.0,-10.0),
              child: new Container(
              margin: EdgeInsets.only(left:20, right:20), 
              child: new SafeArea(
                child: Column(
                  children: <Widget>[
                    new Expanded(child: Container()),
                    new TabBar(
                      tabs: [
                        Tab(child:Text('Stories',
                        style:Theme.of(context).textTheme.subhead
                        )),
                        Tab(child:Text('Traveling',
                        style:Theme.of(context).textTheme.subhead
                        )),
                        Tab(child:Text('Explore',
                        style:Theme.of(context).textTheme.subhead
                        )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ),            
          ),
          body: new Container(
            //height: double.infinity,
            child: new TabBarView(
            children: <Widget>[
              new Container(  
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[ 
                    new Container(
                    margin: EdgeInsets.only(left:20,top:20,right:20),
                    width:500,
                    height:120,
                    decoration: BoxDecoration(
                    boxShadow:[
                      BoxShadow( 
                        color: Colors.blueGrey[100],
                        blurRadius: 14.0, // has the effect of softening the shadow
                        spreadRadius:1.0,                         
                        offset: Offset(1.0, 1.0),
                      ),
                    ],
                  image: DecorationImage(
                    image: AssetImage('assets/images/travel5.jpg'),
                    colorFilter: new ColorFilter.mode(Colors.blueGrey[200].withOpacity(0.1), BlendMode.lighten),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: new BorderRadius.circular(8.0), 
                ),
                child: new Container(                       
                  alignment: Alignment.topRight,                     
                  child: new IconButton(   
                    icon: new Icon(Icons.favorite),
                    color:Color(0xFFffb600),  
                    onPressed: () {}, 
                  ), 
                  ), 
                ), 
                    new Container(
                      margin:EdgeInsets.only(left:35, top:20, right:20),
                      child: Text("Hello World", 
                      style: Theme.of(context).textTheme.body2,),
                    ),
                    new Container(
                      margin:EdgeInsets.only(left:35, top:12, right:20),
                      child: Text("Your EveryDay Inspiration, Places\n Visited in Delhi and Noida.", 
                      style: Theme.of(context).textTheme.subhead,),
                    ),
                    new Container(
                      width:300,
                      margin: EdgeInsets.only(top:10, bottom:10),
                      child: new Stack(
                        children: <Widget>[   
                          new Container(
                            width:40,
                            height:40,
                            margin: EdgeInsets.fromLTRB(35, 20, 0, 0),
                            //alignment: Alignment.topLeft,
                            decoration: BoxDecoration(
                              border:Border.all(color:Colors.grey[100], width:2),
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage( 
                                image: AssetImage('assets/images/himanshu.png'),
                                fit: BoxFit.cover,
                              ),
                            ), 
                          ),                                
                          new Positioned(
                            child:new Container(
                            width:40,
                            height:40,
                            margin: EdgeInsets.fromLTRB(15, 20, 0, 0),
                            //alignment: Alignment.topLeft,
                            decoration: BoxDecoration(
                              border:Border.all(color:Colors.grey[100], width:2),
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage( 
                                image: AssetImage('assets/images/himanshu.png'),
                                fit: BoxFit.cover,
                              ),
                            ), 
                          ), 
                          left:50,
                          ),  
                          new Positioned(
                            child:new Container(
                            width:40,
                            height:40,
                            margin: EdgeInsets.fromLTRB(15, 20, 0, 0), 
                              decoration: BoxDecoration(
                                border:Border.all(color:Colors.grey[100], width:2),
                                borderRadius: BorderRadius.circular(20),
                                color:Color(0xFFffb600),
                              ),  
                              child: new IconButton(  
                                icon: new Icon(Icons.add, size:20),
                                alignment:Alignment.center,
                                color:Colors.black,  
                                onPressed: () {}, 
                              ), 
                            ), 
                          left:75,
                          ),                     
                        ],
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.only(left:20,top:20,right:20),
                      width:500,
                      height:120,
                      decoration: BoxDecoration(
                      boxShadow:[
                        BoxShadow( 
                          color: Colors.blueGrey[100],
                          blurRadius: 14.0, // has the effect of softening the shadow
                          spreadRadius:1.0,                         
                          offset: Offset(1.0, 1.0),
                        ),
                      ],
                      image: DecorationImage(
                        image: AssetImage('assets/images/travel7.jpg'),
                        colorFilter: new ColorFilter.mode(Colors.blueGrey[200].withOpacity(0.1), BlendMode.lighten),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: new BorderRadius.circular(8.0), 
                    ),
                    child: new Container(                       
                      alignment: Alignment.topRight,                     
                      child: new IconButton(   
                        icon: new Icon(Icons.favorite_border),
                        color:Color(0xFFffb600),  
                        onPressed: () {}, 
                      ), 
                      ),             
                      ), 
                  ],
                ),              
              ),       
              new Container(
                color:Colors.red, 
                child: Text('hello world'),
                ),             
              new Container(
                color:Colors.green,
              ),          
            ],
            ),
          ),
        ),
      ),
    );
  }
}
 