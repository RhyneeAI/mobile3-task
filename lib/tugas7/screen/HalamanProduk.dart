import 'package:flutter/material.dart';
import 'package:mobile3_task/tugas7/model/produk.dart';
import 'package:mobile3_task/tugas7/screen/HalamanKeranjang.dart';
import 'package:provider/provider.dart';

class HalamanProduk extends StatelessWidget {
  const HalamanProduk({super.key});

  @override
  Widget build(BuildContext context) {
    final produks = context.watch<Keranjang>().produks;
    return Scaffold(
      appBar: AppBar(
        title: Text("Katalog Produk"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          Consumer<Keranjang>(
            builder: (context, value, child) {
              return Badge(
                label: Text("${value.item.length}"),
                child: IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HalamanKeranjang(),
                      ),
                    );
                  },
                ),
              );
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: produks.length,
        itemBuilder: (context, index) {
          final item = produks[index];

          return Card(
            child: ListTile(
              title: Text(item.nama),
              leading: Tooltip(
                message: item.nama,
                child: Icon(Icons.square_foot),
              ),
              trailing: IconButton(
                onPressed: () {
                  Provider.of<Keranjang>(context, listen: false).tambah(item);
                }, 
                icon: Icon(Icons.add_shopping_cart)
              ),
            ),
          );
        },
      )
    );
  }
}