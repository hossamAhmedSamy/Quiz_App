import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({required this.answer, required this.onTap, super.key});

  final String answer;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),backgroundColor: const Color.fromARGB(99, 149, 221, 4),
      ),
      onPressed: onTap,
      child: Text(answer,textAlign: TextAlign.center,),
    );
  }
}
