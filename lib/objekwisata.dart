import 'package:flutter/material.dart';

class wisataWidget extends StatelessWidget {
  const wisataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Layout wisata',style: TextStyle(fontSize: 28),),
        backgroundColor: const Color.fromARGB(255, 154, 108, 165),
      ),
      body: Column(
        children: [
          Image.asset('images/moscow.jpeg',width: 200),
          const Text('Moscow City',style: TextStyle(fontSize: 17),),
          const Text('Rusia',style: TextStyle(fontSize: 15),),

          Row (
            children: [
              Icon(Icons.call),
              Icon(Icons.map,),
              Icon(Icons.share),
            ],),
            const Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
        ]
      ),
    );
  }
}