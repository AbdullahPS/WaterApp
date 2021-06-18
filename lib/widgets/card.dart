import 'package:flutter/material.dart';

class WaterCard extends StatelessWidget {
  String name;
  int id;
  double price;
  WaterCard({this.name, this.id, this.price});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Card(
          child: ListTile(
        leading: CircleAvatar(
          child: Text('Description'),
        ),
        title: Text(name),
        subtitle: Text(price.toString()),
      )),
    );
  }
}
