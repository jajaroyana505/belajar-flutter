import 'package:flutter/material.dart';
import 'package:flutter_application_jaja/model/pegawai.dart';
import 'package:flutter_application_jaja/ui/pegawai_item.dart';

class PegawaiPage extends StatefulWidget {
  const PegawaiPage({super.key});

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pegawai"),
      ),
      body: ListView(
        children: [
          PegawaiItem(
              pegawai: Pegawai(
                  nip: '12210792',
                  nama: 'Jaja',
                  tanggal_lahir: '4 Maret 2005',
                  nomor_telepon: '0813555568',
                  email: 'jaja@gmail.com',
                  password: 'pw123')),
          PegawaiItem(
              pegawai: Pegawai(
                  nip: '12210792',
                  nama: 'Royana',
                  tanggal_lahir: '4 Maret 2005',
                  nomor_telepon: '0813555568',
                  email: 'royana@gmail.com',
                  password: 'pw123')),
        ],
      ),
    );
  }
}
