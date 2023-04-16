import 'package:flutter/material.dart';
import 'package:flutter_application_jaja/model/pegawai.dart';

class DetailPegawai extends StatefulWidget {
  final Pegawai pegawai;

  const DetailPegawai({super.key, required this.pegawai});

  @override
  State<DetailPegawai> createState() => _DetailPegawaiState();
}

class _DetailPegawaiState extends State<DetailPegawai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Pegawai"),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            "ID : ${widget.pegawai.id}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Nip : ${widget.pegawai.nip}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Nama : ${widget.pegawai.nama}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Tanggal Lahir : ${widget.pegawai.tanggal_lahir}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Nomor Telephone : ${widget.pegawai.nomor_telepon}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Email : ${widget.pegawai.email}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Password : ${widget.pegawai.password}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text("Ubah")),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text("Hapus")),
            ],
          )
        ],
      ),
    );
  }
}
