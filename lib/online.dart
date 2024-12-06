import 'package:flutter/material.dart';

class Online extends StatefulWidget {
  const Online({super.key});

  @override
  State<Online> createState() => _OnlineState();
}

class _OnlineState extends State<Online> {
  int stato = 0;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 50.0,
        height: 22.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Color.fromRGBO(0,255,0,0.4),
        ),
        child: const Text(
            'online',
          style: TextStyle(
            fontSize: 13.0,
            color: Colors.white,
        ),
          textAlign: TextAlign.center,
        ),
    );
  }
}
