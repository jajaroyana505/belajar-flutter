import 'package:flutter/material.dart';
import 'package:flutter_application_jaja/ui/pasien_page.dart';
import 'package:flutter_application_jaja/ui/pegawai_page.dart';
import 'package:flutter_application_jaja/ui/poli_page.dart';

class ListDataPage extends StatefulWidget {
  const ListDataPage({super.key});

  @override
  State<ListDataPage> createState() => _ListDataPageState();
}

class _ListDataPageState extends State<ListDataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Data"),
      ),
      body: ListView(
        children: [
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Data Pegawai"),
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PegawaiPage()));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Data Pasien"),
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PasienPage()));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Data Poli"),
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PoliPage()));
            },
          ),
        ],
      ),
    );
  }
}
