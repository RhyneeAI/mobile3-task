import 'package:flutter/material.dart';
import 'package:mobile3_task/tugas8/SharedPreferenceModel.dart';
import 'package:provider/provider.dart';


class SharedPreference extends StatelessWidget {
  const SharedPreference({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SharedPreferenceModel(),
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SharedPreferenceModel>(
      builder: (context, model, child) {
        return MaterialApp(
          home: HomePage(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();
  bool _navigated = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final model = Provider.of<SharedPreferenceModel>(context);
    if (!_navigated && model.namaPengguna != null && model.namaPengguna!.isNotEmpty) {
      _navigated = true;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const SecondPage()),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<SharedPreferenceModel>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Input Nama Pengguna')),
      body: Center(
        child: model.namaPengguna == null || model.namaPengguna!.isEmpty
            ? Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: _controller,
                      decoration: const InputDecoration(labelText: 'Masukkan nama'),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () async {
                        if (_controller.text.isNotEmpty) {
                          await model.saveNamaPengguna(_controller.text);
                          if (mounted) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => const SecondPage()),
                            );
                          }
                        }
                      },
                      child: const Text('Simpan & Lanjut'),
                    ),
                  ],
                ),
              )
            : const CircularProgressIndicator(),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<SharedPreferenceModel>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Kedua')),
      body: Center(
        child: Text('Halo, ${model.namaPengguna ?? "-"}!', style: const TextStyle(fontSize: 24)),
      ),
    );
  }
}