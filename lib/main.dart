import 'package:flutter/material.dart';

void main() => runApp(WaterApp());

class WaterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WaterApp',
      home: Scaffold(
          body: SafeArea(
        child: Container(
          child: Text('WATERAPP'),
        ),
      )),
    );
  }
}
