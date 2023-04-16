import 'package:flutter/material.dart';
import 'package:flutter_application_jaja/model/poli.dart';
import 'package:flutter_application_jaja/ui/poli_detail.dart';
import '../service/poli_service.dart';

class PoliForm extends StatefulWidget {
  const PoliForm({Key? key}) : super(key: key);

  @override
  State<PoliForm> createState() => _PoliFormState();
}

class _PoliFormState extends State<PoliForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaPoliCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tambah Poli"),
      ),
      body: SingleChildScrollView(
        child: Card(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(children: [
                _fieldNamaPoli(),
                SizedBox(
                  height: 20,
                ),
                _tombolSimpan()
              ]),
            ),
          ),
        ),
      ),
    );
  }

  _fieldNamaPoli() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Poli"),
      controller: _namaPoliCtrl,
    );
  }

  tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        Poli poli = new Poli(namaPoli: _namaPoliCtrl.text);
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)));
      },
      child: const Text("Simpan"),
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () async {
          Poli poli = new Poli(namaPoli: _namaPoliCtrl.text);
          await PoliService().simpan(poli).then((value) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => PoliDetail(poli: value)));
          });
        },
        child: const Text("Simpan"));
  }
}
