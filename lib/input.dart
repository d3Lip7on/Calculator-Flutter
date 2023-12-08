import 'package:flutter/material.dart';
import 'package:calculator/button.dart';

class Input extends StatefulWidget {
  const Input({super.key});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  String _expression = '0';

  @override
  Widget build(BuildContext context) {
    return Text(
      _expression,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 30,
      ),
    );
  }
}
