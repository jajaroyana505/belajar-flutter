import 'package:flutter/material.dart';
import 'ui/beranda.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Klinik APP JAJA',
      debugShowCheckedModeBanner: false,
      home: Beranda(),
    );
  }
}
