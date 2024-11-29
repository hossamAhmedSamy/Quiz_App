import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key , required this.answersList,});
  final List<String> answersList;


  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("data"),
            SizedBox(
              height: 30,
            ),
            Text(
              "meaw",
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("restart quiz"),
            ),
          ],
        ),
      ),
    );
  }
}
