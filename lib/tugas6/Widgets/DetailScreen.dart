import 'package:flutter/material.dart';
import 'package:mobile3_task/tugas6/Models/Country.dart';

class DetailScreen extends StatelessWidget {
  final int itemId;

  const DetailScreen({super.key, required this.itemId});

  @override
  Widget build(BuildContext context) {
    Country country = Country();

    var name = country.countries[itemId]['name'] ?? '';
    var capital = country.countries[itemId]['capital'] ?? '';
    var imageURL = country.countries[itemId]['image'] ?? '';
    var description = country.countries[itemId]['desc'] ?? '';

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail $name'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              // Gambar 
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 1,
                      color: Colors.white
                    )
                  ],
                ),
                child: Center(
                  child: Image.asset(
                    imageURL,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              
              const SizedBox(height: 20),
              
              // Informasi negara
              Text(
                name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              const SizedBox(height: 8),
              
              Text(
                'Ibukota : $capital',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue[700],
                  fontWeight: FontWeight.w500,
                ),
              ),
              
              const SizedBox(height: 16),
              
              const Text(
                'Deskripsi :',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              const SizedBox(height: 8),
              
              Text(
                description,
                style: const TextStyle(
                  fontSize: 14,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify,
              ),
              
              // Extra padding at bottom for scrolling
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}