import 'package:flutter/material.dart';

void main() {
  runApp(const NoiseClickerApp());
}

class NoiseClickerApp extends StatelessWidget {
  const NoiseClickerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'NoiseClicker',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child: Text('NoiseClicker')),
      ),
    );
  }
}
