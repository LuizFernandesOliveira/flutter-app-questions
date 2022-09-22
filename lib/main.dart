import 'package:flutter/material.dart';
import './result.dart';
import './questionary.dart';

main() => runApp(QuestionApp());

class _QuestionsAppState extends State<QuestionApp> {
  var _selectedQuestion = 0;
  final List<Map<String, Object>> _questions = const [
    {
      'text': 'Question 1',
      'responses': ['1', '2', '3']
    },
    {
      'text': 'Question 2',
      'responses': ['1', '2', '3']
    }
  ];

  void _response() {
    if (hasQuestionsSelected) {
      setState(() {
        _selectedQuestion++;
      });
    }

    print(_selectedQuestion);
  }

  bool get hasQuestionsSelected {
    return _selectedQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Questions'),
          ),
        ),
        body: hasQuestionsSelected
        ? Questionary(selectedQuestion: _selectedQuestion, questions: _questions, response: _response)
        : Result(),
      ),
    );
  }
}

class QuestionApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _QuestionsAppState();
  }
}
