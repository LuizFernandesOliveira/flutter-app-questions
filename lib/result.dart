import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int valueTotal;
  final void Function() restart;

  Result({ required this.valueTotal, required this.restart });

  String get resultText {
    if (valueTotal > 8) {
      return 'Parabéns';
    }
    return 'Você é bom';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            resultText,
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
            onPressed: restart,
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 28),
            ),
            child: const Text('Reiniciar'),
        ),
      ],
    );
  }
}
