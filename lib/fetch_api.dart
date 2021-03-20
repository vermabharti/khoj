import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Post> fetchPost() async {
  final response =
      await http.get('https://api.github.com/users/nitishk72');

  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON
    return Post.fromJson(json.decode(response.body));
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load post');
  }
}

class Post {
  final String name;
  final int id;
  final int public_repos; 
  final String html_url; 

  Post({this.name, this.id, this.public_repos, this.html_url});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      name: json['name'],
      id: json['id'],
      public_repos: json['public_repos'],
      html_url: json['html_url'],
    );
  }
}

void main() => runApp(MyApp(post: fetchPost()));

class MyApp extends StatelessWidget {
  final Future<Post> post;

  MyApp({Key key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold( 
        body: Center(
          child: FutureBuilder<Post>(
            future: post,
            builder: (context, apiData) {
              if (apiData.hasData) {
                return Column(
                  children: <Widget>[
                    Text("Name: ${apiData.data.name}"),
                    Text("id: ${apiData.data.id}"),
                    Text("public_repos: ${apiData.data.public_repos}"),
                    Text("html_url: ${apiData.data.html_url}"),
                  ],
                );            
              } 
              else if (apiData.hasError) {
                return Text("${apiData.error}");
              }
              // By default, show a loading spinner
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}