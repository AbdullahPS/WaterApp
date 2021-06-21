import '../modules/watermodules.dart';
import 'package:flutter/material.dart';

class Modules with ChangeNotifier {
  List<WaterModules> _myList = [
    WaterModules(id: 1, name: 'Module1', price: 10, isLoved: false),
    WaterModules(id: 2, name: 'Module2', price: 10, isLoved: false),
    WaterModules(id: 3, name: 'Module3', price: 10, isLoved: false),
    WaterModules(id: 4, name: 'Module4', price: 10, isLoved: false),
    WaterModules(id: 5, name: 'Module5', price: 10, isLoved: false),
    WaterModules(id: 6, name: 'Module6', price: 10, isLoved: false),
    WaterModules(id: 7, name: 'Module7', price: 10, isLoved: false),
  ];
  List<WaterModules> _myListLoved = [];
  List<WaterModules> get myList {
    return [..._myList];
  }

  List<WaterModules> get myListLoved {
    return [..._myListLoved];
  }

  WaterModules getByID(id) {
    return _myList.firstWhere((element) => element.id == id);
  }

  void onPressedLove(int id) {
    WaterModules module = _myList.firstWhere((element) => element.id == id);
    if (!module.isLoved)
      _myListLoved.add(module);
    else if (module.isLoved)
      _myListLoved.removeWhere((element) => element.id == id);

    List myCopiedList = [..._myList];
    print(_myListLoved);
    myCopiedList.forEach((element) {
      if (element.id == id) element.isLoved = !element.isLoved;
      _myList = [...myCopiedList];
    });
    notifyListeners();
  }
}
