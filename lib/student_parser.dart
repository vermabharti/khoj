
import 'dart:async' show Future;
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

 
Future loadCrossword() async {
  String jsonCrossword = await _loadCrosswordAsset();
  print(jsonCrossword);
  _parseJsonForCrossword(jsonCrossword);
}
  Future<String> _loadCrosswordAsset() async {
  return await rootBundle.loadString('assets/data/student.json');
}

void _parseJsonForCrossword(String jsonString) {
  Map decoded = jsonDecode(jsonString);

  String name = decoded['name'];
  print(name);

  int id = decoded['id'];
  print(id.toString());
}
 