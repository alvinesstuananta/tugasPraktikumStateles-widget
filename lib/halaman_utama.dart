import 'package:flutter/material.dart';

import 'kepala_kota.dart';
import 'kartu_pilar.dart';
import 'panel_laporan.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nusantara Cerdas'), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const KepalaKota(),

            const SizedBox(height: 20),

            const Text(
              'Enam Pilar Smart City',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 12),

            const KartuPilar(
              namaPilar: 'Smart Governance',
              ikon: Icons.account_balance,
              deskripsi: 'Pelayanan pemerintahan yang transparan, efektif, dan mudah diakses masyarakat.',
            ),

            const SizedBox(height: 12),

            const KartuPilar(
              namaPilar: 'Smart Economy',
              ikon: Icons.business_center,
              deskripsi: 'Pengembangan ekonomi digital dan peluang usaha untuk meningkatkan kesejahteraan warga.',
            ),

            const SizedBox(height: 12),

            const KartuPilar(
              namaPilar: 'Smart Living',
              ikon: Icons.home,
              deskripsi: 'Meningkatkan kualitas hidup masyarakat melalui layanan kesehatan, keamanan, dan fasilitas kota.',
            ),

            const SizedBox(height: 12),

            const KartuPilar(
              namaPilar: 'Smart Mobility',
              ikon: Icons.directions_car,
              deskripsi: 'Menyediakan sistem transportasi yang aman, nyaman, terintegrasi, dan efisien.',
            ),

            const SizedBox(height: 12),

            const KartuPilar(
              namaPilar: 'Smart Environment',
              ikon: Icons.eco,
              deskripsi: 'Mengelola lingkungan secara berkelanjutan melalui teknologi dan penggunaan sumber daya yang bijak.',
            ),

            const SizedBox(height: 12),

            const KartuPilar(
              namaPilar: 'Smart People',
              ikon: Icons.people,
              deskripsi: 'Mendorong masyarakat yang kreatif, berpendidikan, inovatif, dan mampu memanfaatkan teknologi.',
            ),

            const SizedBox(height: 20),

            const Text(
              'Panel Laporan Warga',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 12),

            const PanelLaporanWarga(),
          ],
        ),
      ),
    );
  }
}
