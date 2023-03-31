import 'package:flutter/material.dart';

class BarisKolom extends StatelessWidget {
  const BarisKolom({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget Column"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text("Baris 1 Kolom 1"),
              Text("Baris 1 kolom 2"),
              Text("Baris 1 kolom 3")
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text("Baris 2 Kolom 1"),
              Text("Baris 2 kolom 2"),
              Text("Baris 2 kolom 3")
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text("Baris 3 Kolom 1"),
              Text("Baris 3 kolom 2"),
              Text("Baris  kolom 3")
            ],
          ),
        ],
      ),
    );
  }
}
