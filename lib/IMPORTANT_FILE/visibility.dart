import 'package:flutter/material.dart'; 

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:MyApp(),
  ));

class MyApp extends StatefulWidget{
  @override
  MyAppState createState(){
    return new MyAppState();
  } 
}

class MyAppState extends State<MyApp>{
  bool _pressed = false;
  bool _hello = false;
  bool _hello_1 = false;
  bool _pressed_1 = false;
  bool _custom = false;
  bool _custom_1 = false;
  bool _canShowButton = true;
  bool _canShowButton1 = true;
  @override
    Widget build(BuildContext context){
      return Scaffold(
        body:Center(
          child: new ListView(
            children: <Widget>[ 
              _canShowButton ?
              // Condition _ 1

              _pressed ? 
              new Column(
                children: <Widget>[
                  new RaisedButton(
                    child:Text('hello world'),
                    onPressed: (){
                      setState(() {
                        _hello = true;
                      });
                    },
                  ),
                  new RaisedButton(
                    child: Text('hello world hello world'),
                    onPressed: (){
                      setState(() {
                        _hello_1 = true;
                      });
                    },
                  )
                ],
              ):

              // visible button

              new RaisedButton(
                child: Text('Say Hello!'),  
                onPressed: (){
                  setState(() => _canShowButton1 = !_canShowButton1);
                  setState(() {
                    _pressed = true;
                  });
                },
              ): SizedBox(),

            // condition _ 2

              _canShowButton1 ? 
              _pressed_1 ? 
              new Column(
                children: <Widget>[
                  new RaisedButton(
                    child: Text('verma'),
                    onPressed: (){
                      setState(() {
                        _custom = true;
                      });
                    },
                  ),
                  new RaisedButton(
                    child: Text('Hey Bharti'),
                    onPressed: (){
                      setState(() {
                        _custom_1 = true;
                      });
                    },
                  )
                ],
              ):
              new RaisedButton(
                child: Text('Bharti'),
                onPressed: (){
                  setState(() => _canShowButton = !_canShowButton);
                  setState(() {                    
                    _pressed_1 = true;
                  });
                },
              ): 
              SizedBox(),
            ] 
          ),
        ),
      );
    }
  } 