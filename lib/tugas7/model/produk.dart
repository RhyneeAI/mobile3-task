import 'package:flutter/material.dart';

class Produk {
  String nama;
  Produk(this.nama);
}

class Keranjang extends ChangeNotifier {
  List<Produk> produks = [
    Produk('Laptop'),
    Produk('Monitor'),
    Produk('Keyboard'),
    Produk('Mouse'),
    Produk('Headset'),
  ];

  List<Produk> _item = [];
  List<Produk> get item => _item;

  void tambah(Produk produk) {
    _item.add(produk);
    notifyListeners();
  }

  void hapus(int index) {
    _item.removeAt(index);
    notifyListeners();
  }
}