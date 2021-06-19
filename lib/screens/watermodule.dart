import 'package:flutter/material.dart';
import 'package:watercontrol/widgets/card.dart';
import 'package:watercontrol/utilities/waterlist.dart';

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
                      children: [
                        Expanded(
                          child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 15.0,
                                mainAxisSpacing: 15.0,
                              ),
                              itemCount: myList.length,
                              itemBuilder: (BuildContext context, int index) {
                                return WaterCard(
                                  name: myList[index].name,
                                  id: myList[index].id,
                                  price: myList[index].price,
                                );
                              }),
                          flex: 12,
                        )
                      ],
                    ),
                    Icon(Icons.password),
                  ],
                ),
              ),
            )));
  }
}
