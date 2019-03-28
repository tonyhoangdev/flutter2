import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'Post.dart';

class JsonData extends StatefulWidget {
  @override
  _JsonDataState createState() => _JsonDataState();
}

class _JsonDataState extends State<JsonData> {
  String url = 'https://jsonplaceholder.typicode.com/posts';

  Future<List<Post>> showPosts() async {
    var data = await http.get(url);
    var dataDecoded = json.decode(data.body);

    List<Post> lists = List();
    dataDecoded.forEach((post) {
      String title = post['title'];
      if (title.length > 25) {
        title = title.substring(0, 25) + "...";
      }
      String body = post['body'].replaceAll(RegExp(r'\n'), "");
      lists.add(Post(title, body));
    });

    print(lists);
    return lists;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Json"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: FutureBuilder(
            future: showPosts(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Align(
                  alignment: FractionalOffset.center,
                  child: CircularProgressIndicator(),
                );
              }
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text(
                            snapshot.data[index].title,
                            style: TextStyle(fontSize: 20.0),
                          ),
                          Divider(),
                          Text(
                            snapshot.data[index].text,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Divider(),
                          RaisedButton(
                            child: Text('Read more...'),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
