import 'package:flutter/material.dart';
import 'package:mobile3_task/tugas6/Models/Country.dart';
import 'package:mobile3_task/tugas6/Widgets/DetailScreen.dart';

Widget MenuList() {
  Country country = Country();

  return ListView.builder(
    padding: EdgeInsets.all(16),
    itemCount: country.countries.length,
    itemBuilder: (context, index) {
      var data = country.countries[index];
      return Card(
        elevation: 2,
        margin: EdgeInsets.only(bottom: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey[100],
            ),
            child: data['image'].isNotEmpty 
              ? Image.asset(
                  data['image'],
                  fit: BoxFit.cover,
                )
              : Icon(Icons.flag, color: Colors.grey[400]),
          ),
          title: Text(
            data['name'],
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          subtitle: Text(
            data['capital'],
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
          ),
          trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey[400]),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(itemId: index),
              ),
            );
          },
        ),
      );
    },
  );
}