import 'package:flutter/material.dart';

void main() {
  print("Hi Tony2");
//  runApp(MyStatefulWidget());
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false, home: MyStatefulWidget2()));
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
      debugShowCheckedModeBanner: false,
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
            Image(
              image: AssetImage("images/image1.jpg"),
            )
          ],
        ),
      ),
    );
  }
}

class MyStatefulWidget2 extends StatefulWidget {
  @override
  _MyStatefulWidget2State createState() => _MyStatefulWidget2State();
}

class _MyStatefulWidget2State extends State<MyStatefulWidget2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text("Tony"),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.beenhere),
          onPressed: () {
            print('icon');
          },
        ),
        IconButton(
          icon: Icon(Icons.person),
          onPressed: () {
            print('icon');
          },
        )
      ],
    ));
  }
}
