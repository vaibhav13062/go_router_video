import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  final String name;
  const Screen3({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text("Screen 2"),
            Text(name),
          ],
        ),
      ),
    );
  }
}
