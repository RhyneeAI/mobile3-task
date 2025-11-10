import 'package:flutter/material.dart';
import 'package:mobile3_task/tugas5/data/foods.dart';
import 'package:mobile3_task/tugas5/page/detail_screen.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Foods foodData = Foods();
    var foods = foodData.data;

    return MaterialApp(
      title: 'List Screen',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Menu hari ini apa chef?"),
          backgroundColor: const Color.fromARGB(255, 207, 207, 207),
        ),
        body: Column(
          children: [
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: foods.length,
                itemBuilder: (context, index) {
                  final food = foods[index];
                  var id = int.parse(food['id'] ?? '1');
                  var name = food['name'] ?? '';
                  var shortDescription = food['shortDescription'] ?? '';
                  var iconURL = food['iconURL'] ?? '';

                  return ListTile(
                    title: Text(name),
                    leading: CircleAvatar(
                      backgroundImage: Image.asset(iconURL).image,
                      radius: 20,
                    ),
                    subtitle: Text(shortDescription),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(itemId: id),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

