import 'package:flutter/material.dart';
import 'package:mobile3_task/tugas6/Widgets/MenuGrid.dart';
import 'package:mobile3_task/tugas6/Widgets/MenuList.dart';

class ListGrid extends StatelessWidget {
  const ListGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Grid Screen',
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Halaman per List-an"),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.list), text: "Menu List"),
                Tab(icon: Icon(Icons.list), text: "Menu Grid"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              MenuList(),
              MenuGrid()
            ],
          ),
        ),
      )
    );
  }
}