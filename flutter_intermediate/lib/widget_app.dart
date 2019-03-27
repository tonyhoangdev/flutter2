import "package:flutter/material.dart";
import "package:flutter/cupertino.dart";

class WidgetApp extends StatefulWidget {
  @override
  _WidgetAppState createState() => _WidgetAppState();
}

class _WidgetAppState extends State<WidgetApp> {
  Widget androidLayout() {
    return RaisedButton(
      color: Colors.red,
      child: Text("Android"),
      onPressed: () {},
    );
  }

  Widget iosLayout() {
    return CupertinoButton(
      color: Colors.green,
      child: Text("IOS"),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tony Grid View"),
        ),
        body: Theme.of(context).platform == TargetPlatform.iOS
            ? iosLayout()
            : androidLayout(),
      ),
    );
  }
}
