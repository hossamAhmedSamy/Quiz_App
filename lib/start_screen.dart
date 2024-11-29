import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startquiz, {super.key});
  final void Function() startquiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(100, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Color.fromARGB(164, 28, 74, 139),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startquiz,

            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 7, 115, 222),
              backgroundColor: const Color.fromARGB(255, 4, 42, 80),
            ),
            icon: const Icon(Icons.all_inclusive),
            label: const Text('Start quiz'), // Correctly place child here
          ),
        ],
      ),
    );
  }
}
