import 'package:flutter/material.dart';
import 'package:fooddelivery/darkmode.dart';
import 'package:fooddelivery/lightmode.dart';

class Themeprovider with ChangeNotifier{
  ThemeData _themeData=lightmode;

  ThemeData get themeData=> _themeData;

    bool get isdarkMode=> _themeData==darkmode;

    set themeData(ThemeData themeData){
      _themeData=themeData;
      notifyListeners();
    }

    void toggletheme(){
      if(_themeData==lightmode){
        themeData=darkmode;
      }else{
        themeData=lightmode;
      }
    }

}