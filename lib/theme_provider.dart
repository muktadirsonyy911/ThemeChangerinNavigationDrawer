import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

ThemeData light = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.indigo,
    accentColor: Colors.pink,
    scaffoldBackgroundColor: Color(0xfff1f1f1));

ThemeData dark = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.indigo,
  accentColor: Colors.pink,
);

class ThemeNotifier extends ChangeNotifier {
  final String key = "theme";
  SharedPreferences _pref;
  bool _lightTheme;
  bool get lightTheme => _lightTheme;

  ThemeNotifier() {
    _lightTheme = true;
    _loadFromPrefs();
  }
  toggleTheme() {
    _lightTheme = !_lightTheme;
    _saveToPrefs();
    notifyListeners();
  }

  // _initPref() is to iniliaze  the _pref variable
  _initPrefs() async {
    if(_pref == null)
      _pref  = await SharedPreferences.getInstance();
  }
  _loadFromPrefs() async {
    await _initPrefs();
    _lightTheme= _pref.getBool(key) ?? true;
    notifyListeners();
  }
  _saveToPrefs() async {
    await _initPrefs();
    _pref.setBool(key, _lightTheme);
  }
}

