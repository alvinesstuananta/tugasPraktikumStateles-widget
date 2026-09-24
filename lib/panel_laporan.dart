import 'package:flutter/material.dart';

class PanelLaporanWarga extends StatefulWidget {
  const PanelLaporanWarga({super.key});

  @override
  State<PanelLaporanWarga> createState() => _PanelLaporanWargaState();
}

class _PanelLaporanWargaState extends State<PanelLaporanWarga> {
  int _jumlahLaporan = 0;

  void _laporanMasuk() {
    setState(() {
      _jumlahLaporan++;
    });
  }

  void _laporanSelesai() {
    setState(() {
      if (_jumlahLaporan > 0) {
        _jumlahLaporan--;
      }
    });
  }

  void _resetHarian() {
    setState(() {
      _jumlahLaporan = 0;
    });
  }

  String _statusPelayanan() {
    if (_jumlahLaporan < 5) {
      return 'Pelayanan Lancar';
    } else if (_jumlahLaporan <= 10) {
      return 'Pelayanan Sibuk';
    } else {
      return 'Perlu Penambahan Petugas';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Laporan Warga',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Center(
              child: Text(
                '$_jumlahLaporan',
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: Text(
                _statusPelayanan(),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: _laporanMasuk,
                    icon: const Icon(Icons.add),
                    label: const Text('Laporan Masuk'),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: _laporanSelesai,
                    icon: const Icon(Icons.check),
                    label: const Text('Laporan Selesai'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: TextButton.icon(
                onPressed: _resetHarian,
                icon: const Icon(Icons.refresh),
                label: const Text('Reset Harian'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
