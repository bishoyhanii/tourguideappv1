import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tourguide/drawer_menu.dart';
import 'package:tourguide/splash.dart';

import 'home.dart';

void main() async {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
