import 'package:flutter/material.dart';
import 'package:mobile3_task/tugas8/TemaModel.dart';
import 'package:provider/provider.dart';


class SharedPreference extends StatelessWidget {
  const SharedPreference({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TemaModel(),
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TemaModel>(
      builder: (context, value, child) {
        return MaterialApp(
          home: HomePage(),
          theme: ThemeData.light(useMaterial3: true),
          darkTheme: ThemeData.dark(useMaterial3: true),
          themeMode: value.tema,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<TemaModel>(context);
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.notification_add),
        title: Text("Light & Dark", 
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          )
        ),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.cyan,
      body: DefaultTextStyle(
        style: Theme.of(context).textTheme.bodyLarge!, 
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Ganti Tema', 
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 10),
              Switch(
                value: pro.temaGelap, 
                onChanged: (value) {
                  final pr = Provider.of<TemaModel>(context, listen: false);
                  pr.saklar(value);
                },
              )
            ],
          ),
        )
      )
    );
  }

}