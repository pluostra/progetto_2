import 'dart:math';

import 'package:flutter/material.dart';
import 'package:progetto_2/home.dart';

class Scrollanza extends StatefulWidget {
  const Scrollanza({super.key});

  @override
  State<Scrollanza> createState() => _ScrollanzaState();
}

class _ScrollanzaState extends State<Scrollanza> {
  final ScrollController controllo_primo = ScrollController();
  String stato_stringa = 'online';
  Color stato_colore = Colors.green;
  int randomNum = 0;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.brown[600],
        body: Scrollbar(
        child: ListView.builder(
          itemCount: 15,
          itemBuilder: (context,index){
            return Padding(
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
                            child: Card(
                              color: stato_colore,
                              child: SizedBox(
                                width: 76,
                                height: 28,
                                child: Text(
                                  stato_stringa,
                                  style: const TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
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
          stato_colore = const Color.fromRGBO(255, 204, 0, 0.8);
          stato_stringa = 'waiting';
        }
        else {
          stato_colore = Colors.green;
          stato_stringa = 'online';
        }
      });
    },
    child: const Text('click'),
    ),
    );
  }
}
