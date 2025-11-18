import 'package:flutter/material.dart';

import 'package:mobile3_task/profile.dart';
import 'package:mobile3_task/calculator.dart';
import 'package:mobile3_task/tugas4/news.dart';
import 'package:mobile3_task/tugas5/page/list_screen.dart';
import 'package:mobile3_task/tugas6/list_grid.dart';
import 'package:mobile3_task/tugas7/view_provider.dart';

void main() {
  runApp(const ViewProvider());
  // runApp(const ListGrid()); // Tugas 6 (uncomment for viewing)
  // runApp(const ListScreen()); // Tugas 5 (uncomment for viewing)
  // runApp(const Calculator()); // Tugas 3 (uncomment for viewing)
  // runApp(const ProfileCard()); // Tugas 2 (uncomment for viewing)
  // runApp(const NewsApp()); // Tugas 4 (uncomment for viewing)
}
