import 'package:flutter/material.dart';
import '../widget/sidebar.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(title: Text("Beranda")),
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          decoration: BoxDecoration(
            // border: Border.all(
            //     color: Colors.black, width: 5.0, style: BorderStyle.solid),
            color: Color.fromRGBO(5, 222, 255, 0.941),
          ),
        ),
      ),
    );
  }
}
