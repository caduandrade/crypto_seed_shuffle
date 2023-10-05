import 'package:crypto_seed_shuffle/shuffle.dart';
import 'package:crypto_seed_shuffle/swapper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<int> _keyNumbers;

  @override
  void initState() {
    super.initState();
    final List<int> swappers = Swapper.fromCharacters('249301');
    Shuffle shuffle = Shuffle(seedLength: 24, swappers: swappers);
    _keyNumbers = shuffle.execute();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Crypto seed shuffle'),
        ),
        body: Center(child: Text(_keyNumbers.join(' '))));
  }
}
