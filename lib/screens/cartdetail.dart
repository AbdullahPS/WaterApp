import 'package:flutter/material.dart';

class CardDetail extends StatelessWidget {
  static const routePathName = 'CartDetail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://cf.shopee.ph/file/6907c52b5698df501bf2fd83e803d6d2')))),
          FractionalTranslation(
            translation: Offset(0, -0.5),
            child: Container(
              width: 160,
              height: 70,
              child: Center(
                  child: Text(
                '-99%',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )),
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: 5, color: Colors.white)),
            ),
          ),
          FractionalTranslation(
            translation: Offset(0, -1),
            child: Text(
              'US \$0.01',
              style: TextStyle(
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            ),
          ),
        ],
      ),
    );
  }
}
