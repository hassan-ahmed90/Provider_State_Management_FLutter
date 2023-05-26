import 'package:flutter/foundation.dart';
class FavProvider with ChangeNotifier{
  List<int> _selectedItem = [];
  List<int> get selectedItem => _selectedItem;
  void setItem(int value){
    selectedItem.add(value);
    notifyListeners();
  }
  void deleItem(int value){
    selectedItem.remove(value);
    notifyListeners();
  }
}