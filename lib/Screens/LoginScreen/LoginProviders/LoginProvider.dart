import 'package:flutter/material.dart';

class LoginProvider with ChangeNotifier {



  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  void setCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  bool isLogin = true;

  void toggleLoginSignUp() {
    isLogin = !isLogin;
    notifyListeners();
  }



}