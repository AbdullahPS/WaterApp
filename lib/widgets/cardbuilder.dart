import 'package:flutter/material.dart';
import 'package:watercontrol/utilities/waterlist.dart';
import 'package:watercontrol/widgets/card.dart';

class cardBuilder extends StatelessWidget {
  final int listNum;
  cardBuilder({this.listNum});
  @override
  Widget build(BuildContext context) {
    List list = listNum == 1 ? myList : myListLoved;
    return Expanded(
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            crossAxisSpacing: 15.0,
            mainAxisSpacing: 15.0,
          ),
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) {
            return WaterCard(
              name: list[index].name,
              id: list[index].id,
              price: list[index].price,
            );
          }),
      flex: 12,
    );
  }
}
