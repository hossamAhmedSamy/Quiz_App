import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/answer_button.dart';
import 'package:project2/data/questions_answers.dart';

class Question extends StatefulWidget {
  const Question({
    super.key,
    required this.answer,
  });
  final void Function(String answeris) answer;

  @override
  State<Question> createState() {
    return _QuestionState();
  }
}

class _QuestionState extends State<Question> {
  var currentQuestionIndex = 0;
  void answerQuestion(String ans) {
    widget.answer(ans);
    setState(
      () {
        if (questions.length > currentQuestionIndex + 1) {
          currentQuestionIndex++;
        }
      },
    );
  }

  @override
  Widget build(context) {
    var currentQuestion = questions[currentQuestionIndex];
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.question,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          ...currentQuestion.getshuffledAnswers().map(
            (answer) {
              return AnswerButton(
                answer: answer,
                onTap: () {
                  answerQuestion(answer);
                },
              );
            },
          )
        ],
      ),
    );
  }
}
