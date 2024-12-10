import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String stato_stringa = 'online';
  Color stato_colore = Colors.green;
  int randomNum = 0;
  Random random = Random();
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                const Image(
                  image: NetworkImage('https://images.unsplash.com/photo-1733103373160-003dc53ccdba?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw0fHx8ZW58MHx8fHx8'),
                  width: 100.00,
                ),
                const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top:0.0,left:8.0,right:8.0,bottom:24.0),
                      child: Text(
                        'Immagine qui a fianco',
                        style: TextStyle(
                          color:Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      'Data',
                      style: TextStyle(
                        color:Colors.white,
                      ),
                    ),
                  ],
                ),
               Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(top:40.0,left:8.0,right:8.0,bottom:0.0),
                     child: Container(
                       width: 50.0,
                       height: 22.0,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(16.0),
                         color: stato_colore,
                       ),
                       child:  Text(
                         stato_stringa,
                         style: const TextStyle(
                           fontSize: 13.0,
                           color: Colors.white,
                         ),
                         textAlign: TextAlign.center,
                       ),
                     ),
                   ),
                 ],
               ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          setState(() {
          randomNum = random.nextInt(3);
          if (randomNum == 1){
            stato_colore = Colors.red;
            stato_stringa = 'offline';
          }
          else if(randomNum == 2){
            stato_colore = Colors.yellowAccent;
            stato_stringa = 'waiting';
          }
          else {
            stato_colore = Colors.green;
            stato_stringa = 'online';
          }
          });
        }
      ),
    );
  }
}






