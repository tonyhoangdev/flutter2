import "package:flutter/material.dart";

class MyGridView extends StatefulWidget {
  @override
  _MyGridViewState createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tony Grid View"),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              color: Colors.red,
              child: Text("1"),
            ),
            Container(
              color: Colors.green,
              child: Text("2"),
            ),
            Container(
              color: Colors.blue,
              child: Text("3"),
            ),
            Container(
              color: Colors.red,
              child: Text("4"),
            ),
            Container(
              color: Colors.green,
              child: Text("5"),
            ),
            Container(
              color: Colors.blue,
              child: Text("6"),
            ),
          ],
        ),
      ),
    );
  }
}
