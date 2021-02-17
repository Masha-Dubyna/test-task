import 'package:flutter/material.dart';
import 'homePage.dart';

void main() {
  runApp(TestApp());
}

class TestApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Test App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(text: 'Hey there'),
    );
  }
}


