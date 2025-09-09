import 'package:flutter/material.dart';
import 'package:flutter_project1/Layout_widget1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: "aplikasi flutter", home: MayaWidget());
  }
}
