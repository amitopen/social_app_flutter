import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:socialappflutter/login_ui/SplashScreen/Splash.dart';

import 'package:socialappflutter/pages/home.dart';
import 'package:flutter/scheduler.dart' show timeDilation;


import 'package:flutter/scheduler.dart' show timeDilation;


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firestore.instance.settings(timestampsInSnapshotsEnabled: true).then((_) {
    // print("Timestamps enabled in snapshots\n");
  }, onError: (_) {
    // print("Error enabling timestamps in snapshots\n");
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    timeDilation = 2.0;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white, // navigation bar color
      statusBarColor: Colors.transparent, // status bar color
      statusBarIconBrightness: Brightness.dark, // status bar icons' color
      systemNavigationBarIconBrightness:
      Brightness.dark, //navigation bar icons' color
    ));

    return MaterialApp(
      title: 'FlutterShare',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.teal,
        fontFamily: "OpenSans",

      ),
      home: SplashScreen(),
    );
  }
}
