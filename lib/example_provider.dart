import 'package:flutter/foundation.dart';
class ExampleProvider with ChangeNotifier{

  double _value=1.0;
  double get value =>_value;

  void setData(double val){
  _value=val;
  notifyListeners();
  }
}