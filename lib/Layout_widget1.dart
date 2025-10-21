import 'package:flutter/material.dart';

class MayaWidget extends StatelessWidget {
  const MayaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'layout ismaya ',
          style: TextStyle(color: Colors.blue),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Image.asset(
            'images/smk.png',
            width: 200,
          ),
          const SizedBox(height: 5),
          const Text(
            'SMK YPC Tasikmalaya',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            'Pengembangan Perangkat Lunak Dan Gim',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(children: [Icon(Icons.call), Text('Call')]),
              Column(children: [Icon(Icons.map), Text('Route')]),
              Column(children: [Icon(Icons.share), Text('Share')]),
            ],
          )
        ],
      ),
    );
  }
}