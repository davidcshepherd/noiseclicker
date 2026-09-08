import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const NoiseClickerApp());
}

class NoiseClickerApp extends StatelessWidget {
  const NoiseClickerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'NoiseClicker', 4#
      debugShowCheckedModeBanner: false,
      home: NoiseClickerScreen(),
    );
  }
}

class NoiseClickerScreen extends StatefulWidget {
  const NoiseClickerScreen({super.key});

  @override
  State<NoiseClickerScreen> createState() => _NoiseClickerScreenState();
}

class _NoiseClickerScreenState extends State<NoiseClickerScreen> {
  final AudioPlayer _audioPlayer = AudioPlayer();

  Future<void> _playClap() async {
    await _audioPlayer.stop();
    await _audioPlayer.play(AssetSource('audio/clap.wav'));
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: _playClap,
          child: const Text('Clap'),
        ),
      ),
    );
  }
}
