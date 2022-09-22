import 'package:flutter/material.dart';
import './result.dart';
import './questionary.dart';

main() => runApp(QuestionApp());

class _QuestionsAppState extends State<QuestionApp> {
  var _selectedQuestion = 0;
  var _valueTotal = 0;
  final List<Map<String, Object>> _questions = const [
    {
      'text': 'Qual é a sua cor favorita?',
      'responses': [
        {
          'text': 'Preto',
          'value': 10
        },
        {
          'text': 'Vermelho',
          'value': 5
        }
      ]
    },
    {
      'text': 'Qual é o seu animal favorito?',
      'responses': [
        {
          'text': 'Gato',
          'value': 10
        },
        {
          'text': 'Cachorro',
          'value': 2
        }
      ]
    }
  ];

  void _response(int value) {
    if (hasQuestionsSelected) {
      setState(() {
        _selectedQuestion++;
        _valueTotal += value;
      });
    }

    print(_selectedQuestion);
  }

  void _restart() {
    setState(() {
      _selectedQuestion = 0;
      _valueTotal = 0;
    });
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
        : Result(valueTotal: _valueTotal, restart: _restart),
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
