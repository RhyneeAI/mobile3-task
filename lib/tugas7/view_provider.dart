import 'package:flutter/material.dart';
import 'package:mobile3_task/tugas7/model/produk.dart';
import 'package:mobile3_task/tugas7/screen/HalamanProduk.dart';
import 'package:provider/provider.dart';

class ViewProvider extends StatelessWidget {
  const ViewProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Keranjang(),
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Home",
      home: HalamanProduk(),
    );
  }
}