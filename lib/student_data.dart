import 'package:flutter/material.dart';

class Student{

    String name;
    String model;
    String manufacturer;
    String cost_in_credits;
    String length;
    String max_atmosphering_speed;
    String crew;
    String films;

    Student({
      this.name,
      this.model,
      this.manufacturer,
      this.cost_in_credits,
      this.length,
      this.max_atmosphering_speed,
      this.crew,
      this.films,
    });

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      //films: Film.fromJson(json["films"]),
      name: json["name"],
      model: json["model"],
      manufacturer: json["manufacturer"],
      cost_in_credits: json["cost_in_credits"],
      length: json["length"],
      max_atmosphering_speed: json["max_atmosphering_speed"],
      crew: json["crew"],);
  } 
}
  class Film{
  String id;
  String name;

  Film({
    this.id,
    this.name,
  });

  factory Film.fromJson(Map<String, dynamic> json){
    return Film(
    id: json["id"] as String,
    name: json["name"] as String,
    );
  }
}



