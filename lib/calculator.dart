import 'package:flutter/material.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CalculatorView(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  final _bbController = TextEditingController();
  final _tbController = TextEditingController();

  double? scoreBMI;
  String resultBMI = '-';
  String selectedGender = 'Laki-laki';
  Color resultColor = Colors.grey;

  void HitungBMI() {
    double bb = double.tryParse(_bbController.text) ?? 0.00;
    double tb = double.tryParse(_tbController.text) ?? 0.00;

    setState(() {
      if (bb > 0 && tb > 0) {
        double bmi = bb / ((tb / 100) * (tb / 100));
        scoreBMI = bmi;
        if (selectedGender == 'Laki-laki') {
          if (bmi < 18.5) {
            resultBMI = 'KURUS';
            resultColor = Colors.orange;
          } else if (bmi < 24.9) {
            resultBMI = 'NORMAL';
            resultColor = Colors.green;
          } else if (bmi < 29.9) {
            resultBMI = 'GEMUK';
            resultColor = Colors.yellow;
          } else {
            resultBMI = 'OBESITAS';
            resultColor = Colors.red;
          }
        } else {
          if (bmi < 18.5) {
            resultBMI = 'KURUS';
            resultColor = Colors.orange;
          } else if (bmi < 23.9) {
            resultBMI = 'NORMAL';
            resultColor = Colors.green;
          } else if (bmi < 28.9) {
            resultBMI = 'GEMUK';
            resultColor = Colors.yellow;
          } else if (bmi < 34.9) {
            resultBMI = 'OBESITAS';
            resultColor = Colors.yellow;
          } else {
            resultBMI = 'SANGAT AMAT SUPER DUPER  OBESITAS';
            resultColor = Colors.red;
          }
        }
      } else {
        resultBMI = "MASUKKAN DATA DENGAN BENAR!";
        resultColor = Colors.red;
      }
    });
  }

  void ResetData() {
    setState(() {
      _bbController.clear();
      _tbController.clear();
      scoreBMI = null;
      resultBMI = '-';
      resultColor = Colors.grey;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KALKULATOR BMI'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Pilihan Gender
            const Text('Pilih Jenis Kelamin:'),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Tombol Laki-laki
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedGender = 'Laki-laki';
                      ResetData();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectedGender == 'Laki-laki' 
                        ? Colors.blue : Colors.grey,
                  ),
                  child: const Text('Laki-laki'),
                ),
                const SizedBox(width: 10),
                // Tombol Perempuan
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedGender = 'Perempuan';
                      ResetData();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectedGender == 'Perempuan' 
                        ? Colors.pink : Colors.grey,
                  ),
                  child: const Text('Perempuan'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            
            // Input Berat Badan
            TextField(
              controller: _bbController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Berat Badan (kg)",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            
            // Input Tinggi Badan
            TextField(
              controller: _tbController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Tinggi Badan (cm)",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            
            // Tombol Aksi
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: HitungBMI,
                  child: const Text('HITUNG BMI'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: ResetData,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: const Text('RESET'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            
            // Hasil
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: resultColor),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  const Text(
                    'HASIL BMI',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    scoreBMI?.toStringAsFixed(1) ?? '0.0',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: resultColor,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    resultBMI,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: resultColor,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Jenis Kelamin: $selectedGender',
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}