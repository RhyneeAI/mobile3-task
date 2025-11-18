import 'package:flutter/material.dart';
import 'package:mobile3_task/tugas7/model/produk.dart';
import 'package:provider/provider.dart';

class HalamanKeranjang extends StatelessWidget {
  const HalamanKeranjang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Katalog Produk"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Consumer<Keranjang>(
        builder: (context, value, child) {
          if(value.item.isEmpty) {
            return Text("Keranjang masih kosong");
          }

          return ListView.builder(
            itemCount: value.item.length,
            itemBuilder: (context, index) => Card(
              child: ListTile(
                title: Text(value.item[index].nama),
                trailing: IconButton(
                  onPressed: () {
                    Provider.of<Keranjang>(context, listen: false).hapus(index);
                  }, 
                  icon: Icon(Icons.delete_forever)
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}