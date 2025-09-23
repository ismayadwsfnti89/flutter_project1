import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class SpacedList extends StatelessWidget {
  const SpacedList({super.key});

  @override
  Widget build(BuildContext context) {
    const int itemCount = 4;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Spaced list'),
      ),
      body: LayoutBuilder(
        builder: (context, Constraints){
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: Constraints.maxHeight),
              child: Column(), ),
          );
        }
      ),
    );
  }
}