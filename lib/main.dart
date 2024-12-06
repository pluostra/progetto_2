import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
),
);

class Home extends StatelessWidget {
  const Home({super.key});

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
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Online(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Online extends StatefulWidget {
  const Online({super.key});

  @override
  State<Online> createState() => _OnlineState();
}

class _OnlineState extends State<Online> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        color: Colors.green[600],
        child: const Text(
            'online',
            style:TextStyle(
                color: Colors.white
            )
        ),
      ),
    );
  }
}





