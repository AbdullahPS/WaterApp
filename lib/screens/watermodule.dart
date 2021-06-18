import 'package:flutter/material.dart';
import 'package:watercontrol/widgets/card.dart';
import 'package:watercontrol/modules/waterlist.dart';

class Watermodule extends StatefulWidget {
  static const routePathName = 'Watermodule';

  @override
  _State createState() => _State();
}

class _State extends State<Watermodule> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            itemCount: myList.length,
            itemBuilder: (BuildContext context, int index) {
              return WaterCard(
                name: myList[index].name,
                id: myList[index].id,
                price: myList[index].price,
              );
            }));
  }
}
