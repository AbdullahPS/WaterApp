import 'package:flutter/material.dart';
import 'package:watercontrol/utilities/waterlist.dart';
import 'package:watercontrol/screens/cartdetail.dart';
import 'package:provider/provider.dart';

class WaterCard extends StatelessWidget {
  final String name;
  final int id;
  final double price;
  WaterCard({this.name, this.id, this.price});
  @override
  Widget build(BuildContext context) {
    final listClass = Provider.of<Modules>(context);
    final list = listClass.myList;

    return Container(
        height: 100,
        child: GestureDetector(
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: Icon(
                    Icons.water,
                    size: 50,
                  ),
                  title: Text(this.name),
                  subtitle: Text(id.toString()),
                ),
                Image.asset('assets/images/water.png'),
                ButtonBar(
                  children: <Widget>[
                    TextButton(
                      child: Text('View'),
                      onPressed: () {/* ... */},
                    ),
                    TextButton(
                      child: listClass.getByID(id).isLoved
                          ? Icon(Icons.favorite, color: Colors.red)
                          : Icon(
                              Icons.favorite_border,
                              color: Colors.red,
                            ),
                      onPressed: () {
                        listClass.onPressedLove(id);
                      },
                    ),
                  ],
                ),
                Switch(value: true, onChanged: null)
              ],
            ),
          ),
          onTap: (() => Navigator.push(
              context, MaterialPageRoute(builder: (context) => CardDetail()))),
        ));
  }
}
