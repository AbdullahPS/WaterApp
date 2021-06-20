import '../modules/watermodules.dart';

List<WaterModules> myList = [
  WaterModules(id: 1, name: 'Module1', price: 10, isLoved: false),
  WaterModules(id: 2, name: 'Module2', price: 10, isLoved: false),
  WaterModules(id: 3, name: 'Module3', price: 10, isLoved: false),
  WaterModules(id: 4, name: 'Module4', price: 10, isLoved: false),
  WaterModules(id: 5, name: 'Module5', price: 10, isLoved: false),
  WaterModules(id: 6, name: 'Module6', price: 10, isLoved: false),
  WaterModules(id: 7, name: 'Module7', price: 10, isLoved: false),
];
List<WaterModules> myListLoved = [];

void onPressedLove(int id) {
  WaterModules module = myList.firstWhere((element) => element.id == id);
  if (module.isLoved == false) myListLoved.add(module);
}
