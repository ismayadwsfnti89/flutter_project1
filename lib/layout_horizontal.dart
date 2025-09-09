import 'package:flutter/material.dart';

class MyaWidget extends StatelessWidget {
  const MyaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView Horizontal')),
      // Body berisi ListView Horizontal di dalam SizedBox dengan tinggi 150 
      body: SizedBox(
        height: 150,
        child: ListView(
          scrollDirection: Axis.horizontal, //scrol ke samping
          children: <Widget> [
            Container(width: 160, color: Colors.red),
            Container(width: 160, color: Colors.blue),
            Container(width: 160, color: Colors.green),
            Container(width: 160, color: Colors.yellow),
            Container(width: 160, color: Colors.orange),
          ]
        ),
      ),
    );
  }
}