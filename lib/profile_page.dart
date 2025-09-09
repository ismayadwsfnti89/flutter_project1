import 'package:flutter/material.dart';

class MayaWidget extends StatelessWidget {
  const MayaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'layout ismaya ',
          style: TextStyle(color: Colors.blue),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Image.asset(
            'images/maya.jpg',
            width: 200,
          ),
          SizedBox(height: 5),
          Text(
            'SMK YPC Tasikmalaya',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Pengembangan Perangkat Lunak Dan Gim',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 10),
          Row(
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