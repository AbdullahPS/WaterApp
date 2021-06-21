import 'package:flutter/material.dart';
import 'screens/homepage.dart';
import 'screens/register.dart';
import 'screens/watermodule.dart';
import 'package:provider/provider.dart';
import 'utilities/waterlist.dart';

void main() => runApp(WaterApp());

class WaterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Modules(),
        child: MaterialApp(title: 'WaterApp', home: Homepage(), routes: {
          Homepage.routePathName: (ctx) => Homepage(),
          Register.routePathName: (ctx) => Register(),
          Watermodule.routePathName: (ctx) => Watermodule(),
        }));
  }
}
