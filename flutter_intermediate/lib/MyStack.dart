import 'package:flutter/material.dart';

class MyStack extends StatefulWidget {
  @override
  _MyStackState createState() => _MyStackState();
}

class _MyStackState extends State<MyStack> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
            alignment: Alignment.topLeft,
            children: <Widget>[
              Container(
                width: 400,
                height: 400,
                color: Colors.green,
              ),
              Image(
                width: 200,
                height: 200,
                image: AssetImage('images/image1.jpg'),
                fit: BoxFit.cover,
              )
            ],
          ),
        ),
      ),
    );
  }
}
