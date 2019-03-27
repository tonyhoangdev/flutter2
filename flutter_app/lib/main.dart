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
      home: Padding(
        padding: EdgeInsets.only(top: 24.0, left: 10.0, right: 10.0),
        child: Column(
          children: <Widget>[
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.person),
                      onPressed: () {
                        print("person");
                      },
                    ),
                    Expanded(
                      child: Text("Row1"),
                    ),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        print('add');
                      },
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.person),
                      onPressed: () {
                        print("person");
                      },
                    ),
                    Expanded(
                        child: Row(children: [
                      Text("Row1"),
                      Text("Row2"),
                      Text("Row3"),
                    ])),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        print("add");
                      },
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.person),
                      onPressed: () {
                        print("person");
                      },
                    ),
                    Text("Row1"),
                    Text("Row2"),
                    Text("Row3"),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.person),
                      onPressed: () {
                        print("person");
                      },
                    ),
                    Text("Row1"),
                    Text("Row2"),
                    Text("Row3"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
