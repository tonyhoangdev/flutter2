import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  String input = "";
  List list = List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list.add("no.1");
    list.add("no.2");
    list.add("no.3");
    list.add("no.4");
    list.add("no.5");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.redAccent,
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Todo list"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.pushNamed(context, '/screen3');
              },
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print("tap");
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Add Todo"),
                  content: TextField(
                    onChanged: (value) {
                      input = value;
                    },
                  ),
                  actions: <Widget>[
                    FlatButton(
                      child: Text("Add"),
                      onPressed: () {
                        setState(() {
                          list.add(input);
                        });
                        Navigator.pop(context);
                      },
                    )
                  ],
                );
              },
            );
          },
        ),
        body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, int index) {
            final item = list[index];

            return Dismissible(
              key: Key(item),
              child: ListTile(
                title: Text('$item'),
              ),
              onDismissed: (direction) {
                setState(() {
                  list.removeAt(index);
                });
              },
            );
          },
        ),
      ),
    );
  }
}
