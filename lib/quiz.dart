import 'package:flutter/material.dart';
import 'package:project2/data/questions_answers.dart';
import 'package:project2/question.dart';
import 'package:project2/start_screen.dart';
import 'package:project2/results.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String activeScreen = 'start-screen'; // Set initial screen
  List<String> selectedAnswers = [];

  List<Map<String, Object>> mySummary() {
    List<Map<String, Object>> summary = [];
    for (int i = 0; i < selectedAnswers.length; i++) {
      {
        summary.add({
          "Question num": i,
          "Question": questions[i].question,
          "Answer": questions[i].answers[0],
          "userAnswer": selectedAnswers[i],
        });
      }
    }
    return summary;
  }

  void answeradd(String answer) {
    setState(() {
      selectedAnswers.add(answer);
    });

    // Switch to the result screen if all questions are answered
    if (selectedAnswers.length == questions.length) {
      selectedAnswers.clear();
      switchScreen('result-screen');
    }
  }

  void switchScreen(String screen) {
    setState(() {
      activeScreen = screen;
    });
  }

  @override
  Widget build(context) {
    // Determine the widget to show based on activeScreen
    Widget activescreen;
    if (activeScreen == 'quiz-screen') {
      activescreen = Question(answer: answeradd);
    } else if (activeScreen == 'result-screen') {
      activescreen = ResultScreen(answersList: selectedAnswers);
    } else {
      activescreen = StartScreen(() => switchScreen('quiz-screen'));
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal, Colors.tealAccent],
            ),
          ),
          child: activescreen,
        ),
      ),
    );
  }
}
