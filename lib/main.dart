import 'package:flutter/material.dart';
import './question.dart';

main() => runApp(QuestionApp());

class _QuestionsAppState extends State<QuestionApp> {
  var _selectedQuestion = 0;

  void _response() {
    setState(() {
      _selectedQuestion++;
    });
    print(_selectedQuestion);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> questions = [
      'Question 1',
      'Question 2'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Questions'),
          ),
        ),
        body: Column(
          children: <Widget>[
            Question(text: questions[_selectedQuestion]),
            ElevatedButton(
              style: ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20)),
              onPressed: _response,
              child: Text('reason 1'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20)),
              onPressed: _response,
              child: Text('reason 2'),
            ),
          ],
        ),
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
