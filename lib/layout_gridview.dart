import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('contoh gridview')),
        //Body menampilkan daftar item dalam dua kolom menggunakan GridView.count
        body: GridView.count(
            crossAxisCount: 2, //jumlah kolom: 2
            children: List.generate(6, (index) {
              return Center(
                child: Text('Item $index', style: const TextStyle(fontSize: 20)),
              );
            })));
  }
}