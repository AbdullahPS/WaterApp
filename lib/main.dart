import 'package:flutter/material.dart';
import 'screens/homepage.dart';
import 'screens/register.dart';
import 'screens/watermodule.dart';

void main() => runApp(WaterApp());

class WaterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'WaterApp', home: Homepage(), routes: {
      Homepage.routePathName: (ctx) => Homepage(),
      Register.routePathName: (ctx) => Register(),
      Watermodule.routePathName: (ctx) => Watermodule(),
    });
  }
}
