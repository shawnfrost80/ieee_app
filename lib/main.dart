import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ieee_app/pages/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BVPIEEE App",
      home: DefaultTabController(
        child: Home(),
        length: 3,
      ),
      theme: ThemeData(
        primaryColor: Colors.cyan.shade800,
        accentColor: Colors.purple,
        selectedRowColor: Colors.purple.shade200
      ),
    );
  }
}
