import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
      onPressed: () {
        // Add your onPressed code here!
        debugPrint('ElevatedButton pressed');
      },
      child: const Text("Learn Flutter"),
    ));
  }
}
