import 'package:flutter/material.dart';

class BottomNavProvider extends ChangeNotifier {
  int _current = 0;
  int get current => _current;

  void setIndex(int i) {
    if (i == _current) return;
    _current = i;
    notifyListeners();
  }
}