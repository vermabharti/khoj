import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; 
import 'package:khoj/ktabsbar.dart'; 
import 'package:khoj/kdrawer.dart';

 
void main() => runApp(Detail());

class DetailRoute extends CupertinoPageRoute {
  DetailRoute() : super(builder: (BuildContext context) => new Detail());
  @override
  Widget buildPage(
    BuildContext context, 
    Animation<double> animation,
    Animation<double> secondaryAnimation) {
      return new FadeTransition(opacity: animation, child: new Detail());     
    }
  }

class Detail extends StatefulWidget { 
  @override
  _DetailState createState() => new _DetailState();
}

class _DetailState extends State<Detail> { 
  @override  
  Widget build(BuildContext context) {
    return  Scaffold( 
      appBar: AppBar( 
        elevation: 0.0,
        backgroundColor: Color(0xFFfafafa), 
        actions: <Widget>[
          new Container(
            width:45,
            height:45,
            margin: EdgeInsets.fromLTRB(15, 10, 20, 0),
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
              border:Border.all(color:Colors.grey[100], width:2),
              borderRadius: BorderRadius.circular(40),
              image: DecorationImage( 
                image: AssetImage('assets/images/himanshu.png'),
                fit: BoxFit.contain,
              ),
            ), 
          ), 
        ],    
        iconTheme: IconThemeData(
          color: Colors.black,
        ),   
      ),
      body: Container(
        child: new ListView(          
          children: <Widget>[
            new Container(
              margin:EdgeInsets.only(top:20, left:20),
              child:Text('Perfect',
              style:Theme.of(context).textTheme.title
              ),
            ),
            new Transform.translate(
              offset:Offset(4 ,-6),
              child: new Container(
              margin:EdgeInsets.only(left:20),               
              child:Text('Life Time',
              style: Theme.of(context).textTheme.body1,
              ),
            ),
            ), 
            new SizedBox(
              height:600,
              child: MainTabBar(),           
            ),    
          ],
        ), 
                        
      ),
      bottomNavigationBar: BottomAppBar( 
        elevation: 0.0, 
        color: Color(0xFFf9f9f9),
        child: new Container(
          height:70,
          margin: EdgeInsets.only(left:20, right:20),
            child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),         
            IconButton(
              icon: Icon(Icons.calendar_today),
              onPressed: () {},
            ),
            Container(
              width:120,
              height:40,
              child:new RaisedButton(
                padding: const EdgeInsets.all(10), 
                color: Theme.of(context).buttonTheme.colorScheme.primary,
                onPressed: () {
                  Navigator.of(context).push(new MenuPageRoute());
                },
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                child: new Text("Next",
                style: Theme.of(context).textTheme.button),
              ),
            ),
          ],
        ),
        ),
        
      ),
          
    );
  }
}
 