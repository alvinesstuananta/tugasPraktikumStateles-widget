import 'package:flutter/material.dart';

class KepalaKota extends StatelessWidget {
  const KepalaKota({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.indigo,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          const Icon(Icons.location_city, size: 60, color: Colors.white),
          const SizedBox(height: 12),
          const Text(
            'Kota Nusantara',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            'Cerdas Kotanya, Sejahtera Warganya',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
