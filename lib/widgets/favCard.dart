import 'package:flutter/material.dart';
import 'package:watercontrol/utilities/waterlist.dart';
import 'package:watercontrol/screens/cartdetail.dart';
import 'package:provider/provider.dart';

class FavCard extends StatelessWidget {
  final String name;
  final int id;
  final double price;
  FavCard({this.name, this.id, this.price});
  @override
  Widget build(BuildContext context) {
    final listClass = Provider.of<Modules>(context);
    final list = listClass.myListLoved;

    return Container(
        height: 50,
        child: GestureDetector(
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: Icon(
                    Icons.water,
                    size: 20,
                  ),
                  title: Text(this.name),
                  subtitle: Text(
                    id.toString(),
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                ButtonBar(
                  children: <Widget>[
                    TextButton(
                      child: Text('View'),
                      onPressed: () {/* ... */},
                    ),
                    TextButton(
                        child: TextButton(
                      child: Container(
                        child: Text('Remove it'),
                      ),
                      onPressed: () {
                        listClass.onPressedLove(id);
                      },
                    )),
                  ],
                ),
              ],
            ),
          ),
          onTap: (() => Navigator.push(
              context, MaterialPageRoute(builder: (context) => CardDetail()))),
        ));
  }
}
