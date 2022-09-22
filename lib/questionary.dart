import 'package:flutter/material.dart';
import './question.dart';
import './response.dart';

class Questionary extends StatelessWidget {
  final int selectedQuestion;
  final List<Map<String, Object>> questions;
  final void Function() response;

  Questionary({
    required this.selectedQuestion,
    required this.questions,
    required this.response
  });

  bool get hasQuestionsSelected {
    return selectedQuestion < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> responses = hasQuestionsSelected
        ? questions[selectedQuestion].cast()['responses']
        : [];

    return Column(
      children: <Widget>[
        Question(text: questions[selectedQuestion]['text'].toString()),
        ...responses.map((e) => Response(text: e, onSelected: response)).toList(),
      ],
    );
  }
}
