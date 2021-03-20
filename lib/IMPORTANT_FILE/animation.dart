import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart'; 

void main() => runApp(Animation());

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