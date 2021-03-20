import 'dart:ui';

import 'package:flutter/material.dart'; 
import 'package:scoped_model/scoped_model.dart';
import 'backdrop.dart'; 
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:open_iconic_flutter/open_iconic_flutter.dart'; 
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum FrontPanels { greyPanel } 

class FrontPanelModel extends Model {
  FrontPanelModel(this._activePanel);
  FrontPanels _activePanel;
  FrontPanels get activePanelType => _activePanel;

  Widget panelTitle(BuildContext context) {
    return ListView(
      children: <Widget>[
        new Container(
        margin: EdgeInsets.only(top:10,bottom:10),
        color: Colors.transparent,   
        alignment: AlignmentDirectional.center,  
        child: Stack(
          children: <Widget>[
            new Container(
              width:40,
              height:40,
              margin: EdgeInsets.all(10), 
              decoration: BoxDecoration(
                border:Border.all(color:Color(0xFF808B96), width:1),
                borderRadius: BorderRadius.circular(30), 
              ),
              child:  IconButton(   
                icon: new Icon(Icons.expand_more ,size: 20, color:Color(0xFF808B96)),
                color:Colors.white, 
              ),
            ),
          ],
        ), 
        ),
      ],
    );
  }

  Widget get activePanel =>
    GreyPanel() ;

  void activate(FrontPanels panel) {
    _activePanel = panel;
    notifyListeners();
  }
}

class BackDrop extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ScopedModel(
    model: FrontPanelModel(FrontPanels.greyPanel),
    child: Scaffold(body: SafeArea(child: Panels())));
}

class Panels extends StatelessWidget {
  final frontPanelVisible = ValueNotifier<bool>(true);
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<FrontPanelModel>(
      builder: (context, _, model) => 
      Backdrop(
        frontLayer: model.activePanel,
        backLayer: BackPanel(
          frontPanelOpen: frontPanelVisible,
        ),
        frontHeader: model.panelTitle(context),
        panelVisible: frontPanelVisible,
        frontPanelOpenHeight:0.0,
        frontHeaderHeight: 90.0,
      ),
    );
  }
}

class GreyPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
    new Container( 
    color: Colors.transparent,
    child: ListView(
      children: <Widget>[
        new Container( 
        margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
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
              SizedBox(height:70,),  
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
    );    
}
 
class BackPanel extends StatefulWidget {
  BackPanel({@required this.frontPanelOpen});
  final ValueNotifier<bool> frontPanelOpen;
  @override
  createState() => _BackPanelState();
}

class _BackPanelState extends State<BackPanel> {  
  @override
  Widget build(BuildContext context) { 
    var ui;
        return Container( 
        color:Color(0xFF101010),          
          child: Center( 
            child: ScopedModelDescendant<FrontPanelModel>(
            rebuildOnChange: false, 
            builder: (context, _, model) => ListView(
              children: <Widget>[
              Container(
              //height:1000,
              margin: EdgeInsets.only(top:20),
              child: new Column(               
                children: <Widget>[                   
                  new Container(
                      margin: EdgeInsets.only(top:15), 
                      padding: EdgeInsets.all(15),                
                      child: new Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                        new Container(
                            width:100,
                            height:100,
                            color:Colors.transparent,
                            child: Material(
                              elevation: 4.0,
                              shape: CircleBorder(), 
                              child: InkWell(
                              onTap: (){ print('object');}, 
                              child: Container(
                                decoration: BoxDecoration(
                                color: Color(0xFF181818).withOpacity(0.1), 
                                borderRadius: BorderRadius.circular(8),    
                                ),
                              child: Column(
                                children: <Widget>[ 
                                  new Container(   
                                  margin: EdgeInsets.only(top:20),                            
                                  child: new Icon(MdiIcons.folderEditOutline, color:Color(0xFFc0c0c0), size: 25), 
                                  ), 
                                  new Container(
                                    margin:EdgeInsets.only(top:10),
                                    child: Text('File',
                                      style: TextStyle(
                                        fontSize:15,
                                        color: Color(0xFFc0c0c0),
                                      )
                                      ),
                                    ), 
                                    ],
                                ), 
                                ),                          
                              ),
                              color: Color(0xFF181818),
                            ), 
                        ),  
                    new Container(                 
                      child: Column(
                          children: <Widget>[
                            new Container(
                            padding: EdgeInsets.all(5),
                            child: new Column(
                              children: <Widget>[
                                IconButton(   
                                  //alignment: Alignment(20, 10),                             
                                   icon: new Icon(OpenIconicIcons.shareBoxed, color:Color(0xFFc0c0c0), size:25), 
                                   onPressed: () { print("Pressed"); }
                                ), 
                                new Container(
                                  margin:EdgeInsets.only(top:10),
                                  child: Text('Home',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize:15,
                                    color: Color(0xFFa9a9a9),
                                  ),
                                  ),
                                ),
                              ],
                            ),                          
                            ),
                            ],
                        ), 
                    ),
                    new Container(
                      //margin: EdgeInsets.only(left:25), 
                          child: Stack(
                            children: <Widget>[
                              new Container(
                              padding: EdgeInsets.all(5),
                              child: new Column(
                                children: <Widget>[
                                  IconButton(   
                                    //alignment: Alignment(20, 10),                             
                                    icon: Icon(IconData(0xe98b, fontFamily: 'Boxicons'), color:Color(0xFFc0c0c0), size:25),
                                    color: Colors.white,
                                  ), 
                                  new Container(
                                  margin:EdgeInsets.only(top:10),
                                  child: Text('Documents',
                                  textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize:15,
                                      color: Color(0xFFa9a9a9)
                                    )
                                    ),
                                  ),
                                ],
                              ),
                            
                              ),
                              ],
                          ),
                      
                    ),
                  ],  
                  ), 
                ), 
              new Container( 
              padding:EdgeInsets.all(15),               
              child: new Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[ 
                new Container( 
                  width:80,
                  height:80,                     
                  child: Column(
                      children: <Widget>[
                        new Container( 
                        child: new Column(
                          children: <Widget>[
                            IconButton(   
                              //alignment: Alignment(20, 10),                             
                                icon: new Icon(FontAwesomeIcons.home, color:Color(0xFFc0c0c0), size:25), 
                                onPressed: () { print("Pressed"); }
                            ), 
                            new Container(
                              margin:EdgeInsets.only(top:10),
                              child: Text('Home',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize:15,
                                color: Color(0xFFa9a9a9),
                              ),
                              ),
                            ),
                          ],
                        ),                          
                        ),
                        ],
                    ), 
                ),                     
                new Container(                     
                  child: Column(
                      children: <Widget>[
                        new Container(
                        //padding: EdgeInsets.all(5),
                        child: new Column(
                          children: <Widget>[
                            IconButton(   
                              //alignment: Alignment(20, 10),                             
                                icon: new Icon(FontAwesomeIcons.cogs, color:Color(0xFFc0c0c0), size:25), 
                                onPressed: () { print("Pressed"); }
                            ), 
                            new Container(
                              margin:EdgeInsets.only(top:10),
                              child: Text('Home',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize:15,
                                color: Color(0xFFa9a9a9),
                              ),
                              ),
                            ),
                          ],
                        ),                          
                        ),
                        ],
                    ), 
                ),
                new Container(
                  //margin: EdgeInsets.only(left:25), 
                      child: Stack(
                        children: <Widget>[
                          new Container(
                          //padding: EdgeInsets.all(5),
                          child: new Column(
                            children: <Widget>[
                              IconButton(   
                                //alignment: Alignment(20, 10),                             
                                icon: Icon(IconData(0xe98b, fontFamily: 'Boxicons'), color:Color(0xFFc0c0c0), size:25),
                                color: Colors.white,
                              ), 
                              new Container(
                              margin:EdgeInsets.only(top:10),
                              child: Text('Documents',
                              textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize:15,
                                  color: Color(0xFFa9a9a9)
                                )
                                ),
                              ),
                            ],
                          ),
                        
                          ),
                          ],
                      ),
                  
                ),
              ],  
              ), 
            ),     
              new Container(  
                  //margin: EdgeInsets.only(top:15), 
                  padding: EdgeInsets.all(20),                
                  child: new Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                    new Container( 
                      width:80,
                      height:80, 
                          child: Column(
                            children: <Widget>[ 
                              new Container(   
                              margin: EdgeInsets.only(top:10),                            
                              child: new Icon(MdiIcons.folderEditOutline, color:Color(0xFFc0c0c0), size: 25), 
                              ), 
                              new Container(
                                margin:EdgeInsets.only(top:20),
                                child: Text('File',
                                  style: TextStyle(
                                    fontSize:15,
                                    color: Color(0xFFc0c0c0),
                                  )
                                  ),
                                ), 
                                ],
                            ), 
                            ),    
                    new Container(                      
                      child: Column(
                          children: <Widget>[
                            new Container(
                            //padding: EdgeInsets.all(5),
                            child: new Column(
                              children: <Widget>[
                                IconButton(   
                                  //alignment: Alignment(20, 10),                             
                                   icon: new Icon(OpenIconicIcons.home, color:Color(0xFFc0c0c0), size:25), 
                                   onPressed: () { print("Pressed"); }
                                ), 
                                new Container(
                                  margin:EdgeInsets.only(top:10),
                                  child: Text('Home',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize:15,
                                    color: Color(0xFFa9a9a9),
                                  ),
                                  ),
                                ),
                              ],
                            ),                          
                            ),
                            ],
                        ), 
                    ),
                    new Container(
                      //margin: EdgeInsets.only(left:25), 
                          child: Stack(
                            children: <Widget>[
                              new Container(
                              //padding: EdgeInsets.all(5),
                              child: new Column(
                                children: <Widget>[
                                  IconButton(   
                                    //alignment: Alignment(20, 10),                             
                                    icon: Icon(IconData(0xe98b, fontFamily: 'Boxicons'), color:Color(0xFFc0c0c0), size:25),
                                    color: Colors.white,
                                  ), 
                                  new Container(
                                  margin:EdgeInsets.only(top:10),
                                  child: Text('Documents',
                                  textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize:15,
                                      color: Color(0xFFa9a9a9)
                                    )
                                    ),
                                  ),
                                ],
                              ),
                            
                              ),
                              ],
                          ),
                      
                    ),
                  ],  
                  ), 
                ),
            ]
          ),
        ),
          ]
      )), 
    ),
    );
  }
}
