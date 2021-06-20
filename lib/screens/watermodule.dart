import 'package:flutter/material.dart';
import 'package:watercontrol/widgets/cardbuilder.dart';

class Watermodule extends StatefulWidget {
  static const routePathName = 'Watermodule';

  @override
  _State createState() => _State();
}

class _State extends State<Watermodule> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                leading: Icon(Icons.water),
                bottom: TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.directions_car)),
                    Tab(icon: Icon(Icons.directions_transit)),
                  ],
                ),
                title: Text('Tabs Demo'),
              ),
              body: Padding(
                padding: EdgeInsets.only(top: 15),
                child: TabBarView(
                  children: [
                    Column(
                      children: [cardBuilder(listNum: 1)],
                    ),
                    Column(
                      children: [cardBuilder(listNum: 2)],
                    ),
                  ],
                ),
              ),
            )));
  }
}
