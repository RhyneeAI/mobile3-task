import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TemaModel extends ChangeNotifier {
  ThemeMode _tema = ThemeMode.light;

  ThemeMode get tema => _tema;

  bool get temaGelap => _tema == ThemeMode.dark; 


  Tema() {
    loadTema();
  }

  void saklar(bool x) async {
    _tema = x ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();

    final pref = await SharedPreferences.getInstance();
    pref.setBool("TemaHp", x);
  }

  void loadTema() async {
    final pref = await SharedPreferences.getInstance();
    final isDark = pref.getBool("TemaHp") ?? false;

    _tema = isDark ? ThemeMode.dark : ThemeMode.light;
  }
}

