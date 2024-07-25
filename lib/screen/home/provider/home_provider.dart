import 'package:flutter/material.dart';
class HomeProvider with ChangeNotifier
{
  bool isEmoji1 = false;
  bool isEmoji2 = false;
  bool isEmoji3 = false;
  bool isEmoji4 = false;
  bool isEmoji5 = false;

  void checkData()
  {
    isEmoji1  = true;
    notifyListeners();
  }

  void checkData2()
  {
    isEmoji2 = true;
    notifyListeners();
  }

  void checkData3()
  {
    isEmoji3 = true;
    notifyListeners();
  }

  void checkData4()
  {
    isEmoji4 = true;
    notifyListeners();
  }

  void checkData5()
  {
    isEmoji5 = true;
    notifyListeners();
  }
}