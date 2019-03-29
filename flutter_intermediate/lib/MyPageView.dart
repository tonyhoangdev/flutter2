import 'package:flutter/material.dart';

class MyPageView extends StatefulWidget {
  @override
  _MyPageViewState createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {

  Widget buildPage(text, color) {
    return Center(
      child: Text(
        text,
        style: TextStyle(fontSize: 80, color: color),
      ),
    );
  }

  Widget buildPageView() {
    return PageView(
      children: <Widget>[
        buildPage("Hi", Colors.red),
        buildPage("From", Colors.green),
        buildPage("PageView", Colors.blue),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tony Page View"),
        ),
        body: buildPageView(),
      ),
    );
  }
}
