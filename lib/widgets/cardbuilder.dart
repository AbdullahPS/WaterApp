import 'package:flutter/material.dart';
import 'package:watercontrol/utilities/waterlist.dart';
import 'package:watercontrol/widgets/card.dart';
import 'package:provider/provider.dart';
import 'favCard.dart';

class cardBuilder extends StatelessWidget {
  final int listNum;
  cardBuilder({this.listNum});
  @override
  Widget build(BuildContext context) {
    final listData = Provider.of<Modules>(context);
    final listAll = listData.myList;
    final listLoved = listData.myListLoved;
    List list = listNum == 1 ? listAll : listLoved;
    return Expanded(
      child: list.isNotEmpty
          ? GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: listNum == 1 ? 1 : 2,
                crossAxisSpacing: 15.0,
                mainAxisSpacing: 15.0,
              ),
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                return listNum == 1
                    ? WaterCard(
                        name: list[index].name,
                        id: list[index].id,
                        price: list[index].price,
                      )
                    : FavCard(
                        name: list[index].name,
                        id: list[index].id,
                        price: list[index].price,
                      );
              })
          : Text('u dont have any favorites'),
      flex: 12,
    );
  }
}
