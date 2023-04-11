import 'package:flutter/material.dart';
import 'package:flutter_application_jaja/model/pasien.dart';

class DetailPasien extends StatefulWidget {
  final Pasien pasien;

  const DetailPasien({super.key, required this.pasien});

  @override
  State<DetailPasien> createState() => _DetailPasienState();
}

class _DetailPasienState extends State<DetailPasien> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Pasien"),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            "ID : ${widget.pasien.id}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Nomor RM : ${widget.pasien.nomor_rm}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Nama : ${widget.pasien.nama}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Tanggal Lahir : ${widget.pasien.tanggal_lahir}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Nomor Telepon : ${widget.pasien.nomor_telepon}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Alamat : ${widget.pasien.alamat}",
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
