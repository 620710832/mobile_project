import 'package:flutter/material.dart';

import 'package:mobile_project/LoginpageAdd-On/mainpage.dart';
import 'Doglist/doglist.dart';
import 'LoginpageAdd-On/Loginscreen.dart';
import 'LoginpageAdd-On/showdetail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      routes: {
    Loginscreen.page : (context) => Loginscreen(),
        mainpage.page : (context) => mainpage(),
        Doglist.page : (context) => Doglist(),
        Showdetail.page : (context) => Showdetail(),
        Doglist.page : (context) => Doglist(),
      },
    );
  }
}


