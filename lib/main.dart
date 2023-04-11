import 'package:flutter/material.dart';
import 'package:flutter_application_jaja/ui/pasien_page.dart';
import 'package:flutter_application_jaja/ui/poli_page.dart';
import '/ui/poli_page.dart';
import '/ui/pegawai_page.dart';
import '/ui/list_data_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Klinik APP JAJA',
      debugShowCheckedModeBanner: false,
      home: ListDataPage(),
    );
  }
}
