import 'package:flutter/material.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

class MySharedPreferences extends StatefulWidget {
  @override
  _MySharedPreferencesState createState() => _MySharedPreferencesState();
}

class _MySharedPreferencesState extends State<MySharedPreferences> {
  String input, username;

  @override
  void initState() {
    super.initState();

    getSharedPrefs();
  }

  Future<Null> storeInput(String input) async {
    await SharedPreferences.getInstance().then((prefs) {
      setState(() {
        prefs.setString("username", input);
        username = input;
      });
    });
  }

  Future<Null> getSharedPrefs() async {
    await SharedPreferences.getInstance().then((prefs) {
      setState(() {
        username = prefs.get("username");
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(username == null ? 'Tony Shared Preferences' : username),
        ),
        body: Column(
          children: <Widget>[
            TextField(
              onChanged: (value) {
                input = value;
              },
            ),
            RaisedButton(
              child: Text("save username"),
              onPressed: () {
                setState(() {
                  storeInput(input);
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
