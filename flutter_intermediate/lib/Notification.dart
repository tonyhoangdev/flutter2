import 'package:flutter/material.dart';

class Notification extends StatefulWidget {
  @override
  _NotificationState createState() => _NotificationState();
}

class _NotificationState extends State<Notification> {
  void showSnackbar(context) {
    final snackbar = SnackBar(
      content: Text('Hi Snackbar'),
      action: SnackBarAction(label: "OK", onPressed: () {}),
    );
    Scaffold.of(context).showSnackBar(snackbar);
  }

  void showModalBottom(context) {
    showModalBottomSheet(
      context: context,
      builder: (builder) {
        return Container(
          height: 100.0,
          color: Colors.deepOrange,
          child: Center(
            child: Text("Modal bottom sheet"),
          ),
        );
      },
    );
  }

  Future showSimpleDialog(context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Simple Dialog"),
          content: Text('Message'),
          actions: <Widget>[
            FlatButton(
              child: Text("OK"),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Notification"),
        ),
        body: Builder(
          builder: (context) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    child: Text('Snackbar'),
                    color: Colors.blue,
                    textColor: Colors.white,
                    splashColor: Colors.green,
                    onPressed: () {
                      showSnackbar(context);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    child: Text('Modal bottom'),
                    color: Colors.blue,
                    textColor: Colors.white,
                    splashColor: Colors.green,
                    onPressed: () {
                      showModalBottom(context);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    child: Text('Simple dialog'),
                    color: Colors.blue,
                    textColor: Colors.white,
                    splashColor: Colors.green,
                    onPressed: () {
                      showSimpleDialog(context);
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
