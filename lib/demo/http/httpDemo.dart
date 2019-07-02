import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:my_first/model/post.dart';


class httpDemo extends StatelessWidget {
  const httpDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('httpDemo'),
        elevation: 0.0,
      ),
      body: httpHomeDemo(),
    );
  }
}

class httpHomeDemo extends StatefulWidget {
  httpHomeDemo({Key key}) : super(key: key);

  _httpHomeDemoState createState() => _httpHomeDemoState();
}

class _httpHomeDemoState extends State<httpHomeDemo> {

@override
  void initState() {
    super.initState();
    // fetchPost().then((value) => print(value));
// final postJson = {
//   'title' :'hello',
//   'description' : 'nice to meet you',
// };

// print('$postJson');
// print(postJson['title']);
// print(postJson['description']);

// final postTest = json.encode(postJson);

// print('$postTest');

// final testPost = json.decode(postTest);
// print('$testPost');
// print('${testPost['title']}');
// print(testPost is Map);

// final postModel = Post.fromJson(testPost);
// // print('${postModel}');
// print('${postModel.description}');
// print('${postModel.title}');

// print('${json.encode(postModel)}');

  }

  

  Future<List<Post>> fetchPost() async {
    final resoorce = await http.get('https://resources.ninghao.net/demo/posts.json');
    // if (resoorce.statusCode == 200) {
    //     final resourceBody = json.decode(resoorce.body);
    //     print('${resoorce}');
    //     print('${resourceBody}');
    //     List<Post>  posts = resourceBody['posts']
    //     .map<Post>((item) => Post.fromJson(item))
    //     .toList();

    //     return posts;
    // } else {
    //   throw Exception('fail to fetch posts');
    // }
    print('${resoorce.statusCode}');
        print('${resoorce.body}');
// final resourceEncode = resoorce.
        // final postModel = Post.fromJson(resource);
    // final postResource = await http.post('');
  }

  @override
  Widget build(BuildContext context) {
    return 
    FutureBuilder(
      future: fetchPost(),
      builder: (BuildContext context ,AsyncSnapshot snapshot) {
        print('data:${snapshot.data}');
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Text('loading....'),
          );
        }
      },
    );

    //     return ListView(
    //       children: snapshot.data.map<Widget>((item){
    //         return ListTile(
    //           title: Text(item.title),
    //           subtitle: Text(item.author),
    //           leading: CircleAvatar(
    //             backgroundImage: NetworkImage(item.imageUrl),
    //             // backgroundImage: ,
    //           ),
    //         );
    //       }).toList(),
    //     );
    //   },
    // );
  }
}


void httpTestDemo(){

}


class Post {
  final int id;
  final String title;
  final String author;
  final String description;
  final String imageUrl;

Post(
  this.id,
  this.title,
  this.author,
  this.description,
  this.imageUrl,
);

Post.fromJson(Map json) 
: title = json['title'],
id = json['id'],
author = json['author'],
description = json['description'],
imageUrl = json['imageUrl'];


Map toMap() => {
  'title':title,
  'id':id,
  'author':author,
  'imageUrl':imageUrl,
  'description':description 
};

}