import 'package:flutter/material.dart';

class idsWidget extends StatelessWidget{
 const idsWidget({super.key});

@override
 Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: const Text("Profil Saya"),
    ),
    body: Column(
      children: [
        const SizedBox(height: 10),
          Image.asset(
            'images/maya.jpg',
            width: 200,
          ),

        const Text('Ismaya Dewi Sofianti',style: TextStyle(fontSize: 24,fontWeight:  FontWeight.bold,),),

        //sub judul
        const Text('XI RPL 2',style: TextStyle(color: Color.fromARGB(255, 36, 34, 26)),
        ),
        const SizedBox( height: 16),

        //baris ikon 
        const Row (mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Column(children: [Icon(Icons.call),Text("call"),],),
        Column(children: [Icon(Icons.map),Text('route'),],),
        Column(children: [Icon(Icons.share),],),],
          )
        ],
      ),
    );
  }
}