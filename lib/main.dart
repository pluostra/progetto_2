import 'package:flutter/material.dart';

void main() => runApp(Home(),);

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
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Image(
                  image: NetworkImage('https://images.unsplash.com/photo-1733103373160-003dc53ccdba?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw0fHx8ZW58MHx8fHx8'),
                  width: 100.00,
                ),
                Column(
                children: [Padding(
                  padding: EdgeInsets.all(8.0),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}

