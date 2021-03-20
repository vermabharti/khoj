// import 'package:khoj/khoj.json';
import 'package:flutter/material.dart';

class KhojJson {
  String place;
  final String story;
  // final List<String> gallery;
  // final List<String> routes;
  final String user;

  KhojJson({
    @required this.place,
    @required this.story,
    // @required this.gallery,
    // @required this.routes,
    @required this.user,
  });

  factory KhojJson.fromJson(Map<String, dynamic> json){
    if(json == null){
      throw FormatException('error');
    }
    return new KhojJson(
      place: json['place'],
      //story: json['story'],
      // gallery: json['gallery'],
      // routes: json['routes'],
      user: json['user'],
    );
  }
}