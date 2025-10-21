import 'package:flutter/material.dart';

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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: List.generate(
                  itemCount,
                  (index) => Card(
                    margin: const EdgeInsets.all(8),
                    color: Colors.blue [100 * (index + 2)],
                    child: SizedBox(
                      height: 100,
                      child: Center(
                        child: Text(
                          "item $index",
                        style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                          )
                        ),
                      ),  
                    ),
                  ),
                ),
              )
            ),
          );
        },
      ),
    );
  }
}