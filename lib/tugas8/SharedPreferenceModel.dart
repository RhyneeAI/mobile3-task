import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceModel extends ChangeNotifier {
  String? namaPengguna;

  SharedPreferenceModel() {
    loadNamaPengguna();
  }

  Future<void> saveNamaPengguna(String nama) async {
    namaPengguna = nama;
    notifyListeners();
    final pref = await SharedPreferences.getInstance();
    await pref.setString("nama_pengguna", nama);
  }

  Future<void> loadNamaPengguna() async {
    final pref = await SharedPreferences.getInstance();
    namaPengguna = pref.getString("nama_pengguna");
    notifyListeners();
  }

  Future<void> hapusNamaPengguna() async {
    final pref = await SharedPreferences.getInstance();
    await pref.remove("nama_pengguna");
    namaPengguna = null;
    notifyListeners();
  }
}

