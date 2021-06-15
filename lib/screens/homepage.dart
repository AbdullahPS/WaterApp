import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('WaterApp'),
        ),
        body: Container(
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  'assets/images/water.png',
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ],
          ),
        ));
  }
}
