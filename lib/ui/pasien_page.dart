import 'package:flutter/material.dart';
import 'package:flutter_application_jaja/model/pasien.dart';
import 'package:flutter_application_jaja/ui/pasien_item.dart';

class PasienPage extends StatefulWidget {
  const PasienPage({super.key});

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pasien"),
      ),
      body: ListView(
        children: [
          PasienItem(
              pasien: Pasien(
                  id: 1,
                  nomor_rm: '0001',
                  nama: 'Dadang',
                  tanggal_lahir: '12 September 19999',
                  nomor_telepon: '08135668258',
                  alamat: 'perum bumi')),
          PasienItem(
              pasien: Pasien(
                  id: 2,
                  nomor_rm: '0002',
                  nama: 'Asep',
                  tanggal_lahir: '12 September 1997',
                  nomor_telepon: '08135668258',
                  alamat: 'perum bumi')),
        ],
      ),
    );
  }
}
