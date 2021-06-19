import 'package:flutter/material.dart';

class WaterCard extends StatelessWidget {
  final String name;
  final int id;
  final double price;
  WaterCard({this.name, this.id, this.price});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.blue,
      child: Card(
        shadowColor: Colors.yellow,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: GridTile(
          header: CircleAvatar(
            child: Text('Description'),
          ),
          footer: Text(name),
          child: Text(price.toString()),
        ),
      ),
    );
  }
}
