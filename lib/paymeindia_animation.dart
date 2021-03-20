import 'package:flutter/material.dart'; 
import 'package:khoj/MochDataDetail.dart';
import 'package:khoj/paymedetail.dart';

class Paymeindia extends StatefulWidget {
  @override
  _PaymeindiaAnimation createState() => new _PaymeindiaAnimation();
}

class _PaymeindiaAnimation extends State<Paymeindia> with SingleTickerProviderStateMixin{
  AnimationController controller;

  @override
  void initState(){
    super.initState();
      controller = new AnimationController(
        duration : const Duration(milliseconds:3500),
        vsync: this,      
      );
    controller.forward();
  }
  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  } 
  @override
  Widget build(BuildContext context){
    return PaymeDetailsPage(
      basic: MockDataBasic.login,
      controller: controller, 
    );
  }
} 