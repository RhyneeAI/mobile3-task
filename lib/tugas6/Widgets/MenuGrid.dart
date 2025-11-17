import 'package:flutter/material.dart';
import 'package:mobile3_task/tugas6/Models/Country.dart';
import 'package:mobile3_task/tugas6/Widgets/DetailScreen.dart';

Widget MenuGrid() {
  Country country = Country();

  return GridView.builder(
    padding: EdgeInsets.all(12), 
    itemCount: country.countries.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      childAspectRatio: 1.2, // Sesuaikan aspect ratio
    ), 
    itemBuilder: (context, index) {
      var data = country.countries[index];
      return Card(
        elevation: 3,
        child: ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(itemId: index),
              ),
            );
          },
          leading: Container(
            width: 60,
            height: 60,
            child: data['image'].isNotEmpty 
              ? Image.asset(data['image'], fit: BoxFit.cover) 
              : Icon(Icons.flag, size: 40),
          ),
          title: Text(
            data['name'],
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(data['capital']),
        ),
      );
    },
  );
}