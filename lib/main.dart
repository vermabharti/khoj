import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart'; 
import 'package:khoj/theme.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
 

void main(){
  runApp(new JsonData()); 
}

class JsonData extends StatefulWidget{
  @override
  _JsonDataState createState() => new _JsonDataState();
}

class _JsonDataState extends State<JsonData> {
  String name = '';
  int id = 0;
  int public_repos = 0; 
  String html_url = '';

  TextEditingController user = new TextEditingController();
  String url = "https://api.github.com/users/"; 
  List data;

  @override
  void initState() { 
    super.initState();
    this.getJsonData();
  }


  Future<String> getJsonData() async{
    var res = await http.get(Uri.encodeFull(url), headers: {"Accept":"application/json"});
    print(res.body);
    setState(() {
      var convertDataToJson = json.decode(res.body);
      data = convertDataToJson['res.body'];
    });
    return('SUCCESS');
  }
    // getData(String username) async{
    //     String profile = url+username; 
    //     var res = await http.get(profile, headers:{"accept":"application.json"});
    //     var resBody = json.decode(res.body);
    //     name = resBody['name'];
    //     id = resBody['id'];
    //     public_repos = resBody['public_repos'];
    //     html_url = resBody['html_url'];
    //     setState(() {
    //       print("SUCCESS");
    //     });
    // }
  
    @override
    Widget build(BuildContext context) { 
      return new MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: panelTheme, 
        home:Scaffold(
          body:Container(
            child: Column(
              children: <Widget>[
                new Text('hello World'),
                // new TextField(
                //   controller: user,
                //   decoration: InputDecoration(
                //     hintText: 'Enter the Username'
                //   ),
                // ),
                // new RaisedButton(
                //   onPressed: () => getData(user.text),
                //   child: new Text('See the Details'),
                // ),
                new Text('Name: $name'),
                new Text('id: $id'),
                new Text('Public Repository: $public_repos'),
                new Text('HTML Link: $html_url'),
              ],
            ),
  
          ),
        ),
      );
    }
 
} 
