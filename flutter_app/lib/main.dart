import 'package:flutter/material.dart';

void main() {
  print("Hi Tony2");
  runApp(MyStatefulWidget());
}

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red,
        child: Center(
          child: Text(
            "Hello Tony2",
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ));
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  var myColor = Colors.red;

  changeColor() {
    setState(() {
      myColor = Colors.teal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: myColor,
        child: Center(
          child: RaisedButton(
            child: Text("Click"),
            onPressed: () {
              print('click');
              changeColor();
            },
          ),
        ),
      ),
    );
  }
}
