import 'package:flutter/material.dart';

class Response extends StatelessWidget {
  final String text;
  final void Function() onSelected;

  Response({required this.text, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20)),
        onPressed: onSelected,
        child: Text(text),
      ),
    );
  }
}
