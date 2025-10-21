import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FavWidget extends StatefulWidget{
  const FavWidget({super.key});

  @override
  State<FavWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavWidget>{

  bool _isFav = true;
  int favCount = 41;

  @override
  void _toogleFav() {
   setState(() {
    if (_isFav){
      favCount -= 1;
      _isFav = false;
    }else {
      favCount += 1;
      _isFav = true;
    }
   });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 16, 11),
      appBar: AppBar(
        title: const Text(
          'Favorite widget',
          style: TextStyle(color: Colors.white),
      ),
      backgroundColor: const Color.fromARGB(255, 173, 214, 248),
      ),
      body: Center(
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder
          (borderRadius: BorderRadius.circular(16)
          ),
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Tekan bintang untuk menambahkan dan menghapus favorite',
                style: TextStyle(fontSize: 16, 
                fontWeight: FontWeight.bold,
                color: Colors.black
                ),
                textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                    onPressed: _toogleFav,
                    icon: _isFav
                    ? const Icon(Icons.star)
                    : const Icon(Icons.star_border),
                    iconSize: 40,
                    color: Colors.pinkAccent,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '$favCount', style: const TextStyle(fontSize: 22,fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 221, 224, 181)),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      )
    );
  }
}