import 'package:flutter/material.dart';

class WaterCard extends StatelessWidget {
  String name;
  int id;
  double price;
  WaterCard({this.name, this.id, this.price});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Card(
        shadowColor: Colors.yellow,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: ListTile(
          leading: CircleAvatar(
            child: Text('Description'),
          ),
          title: Text(name),
          subtitle: Text(price.toString()),
        ),
      ),
    );
  }
}
