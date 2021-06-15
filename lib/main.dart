import 'package:flutter/material.dart';
import 'screens/homepage.dart';

void main() => runApp(WaterApp());

class WaterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WaterApp',
      home: Homepage(),
    );
  }
}
