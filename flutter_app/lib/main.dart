import 'package:flutter/material.dart';

void main() {
  print("Hi Tony");
  runApp(
      MyApp()
  );
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo1',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Flutter Demo'),
            ),
            body: Center(
              child: Column(
                children: <Widget>[
                  MyStatefulWidget()
                ],
              ),
            )
        )
    );
  }
}


class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red,
        child: Center(
            child: Text(
              "Hello from Tony",
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 32.0, color: Colors.white),
            )
        )
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: RaisedButton(
          child: Text("Click"),
          onPressed: () {
            print("Hi from MyStatefulWidget");
          },
        ),
      ),
    );
  }
}
