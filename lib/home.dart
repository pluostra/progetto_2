import 'dart:math';
import 'package:flutter/material.dart';
import 'package:progetto_2/scroll.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[600],
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: const Text(
          'Immagine',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body:Scrollanza(),
    );
  }
}






