import 'package:flutter/material.dart';

class HelloWord extends StatelessWidget {
  const HelloWord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Belajar Flutter"),
      ),
      body: const Center(
        child: Text("Hello Word"),
      ),
    );
  }
}
