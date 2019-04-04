import 'package:flutter/material.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:map_view/map_view.dart';
import 'common/AppDef.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  MapView.setApiKey(AppDef.apiKey);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  MapViewType mapViewType = MapViewType.normal;
  MapView _mapView;

  Future getData() async {
    var url = "http://27.66.68.227:3000";
    var data = await http.get(url);
    var dataDecoded = json.decode(data.body);

    print(dataDecoded);
  }
  @override
  void initState() {
    super.initState();
    _mapView = new MapView();

    getData();


  }

  showMap() {
//    _mapView.show(new MapOptions(showUserLocation: true));
    _mapView.show(new MapOptions(
      mapViewType: mapViewType,
      showMyLocationButton: true,
      hideToolbar: true,
//        showCompassButton:true,
      showUserLocation: true,
      initialCameraPosition: new CameraPosition(
          new Location(21.029384909035937, 105.77118122407131), 16,
          bearing: 80),
    ));
//
//    _mapView.setMarkers(<Marker>[
//      new Marker("1", "Work", 21.029384909035937, 105.77118122407131,
//          color: Colors.blue),
//      new Marker("2", "Nossa Familia Coffee", 21.0179495, 105.7824433),
//    ]);
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            child: SizedBox(
              height: 500.0,
              child: showMap(),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            if (mapViewType != MapViewType.normal) {
              mapViewType = MapViewType.normal;
            } else {
              mapViewType = MapViewType.hybrid;
            }
          });
        },
      ),
    );
  }
}
