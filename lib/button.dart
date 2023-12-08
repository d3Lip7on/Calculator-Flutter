import 'package:flutter/material.dart';
import 'package:calculator/main.dart';

class Button extends StatelessWidget {
  String content;
  Color? backgroundColor;
  Color? color;
  Button({super.key, required this.content, this.backgroundColor, this.color});
  Button.orangeButton({super.key, required this.content}){
    color = Colors.white;
    backgroundColor = Colors.orangeAccent;
  }
  Button.greyButton({super.key, required this.content}){
    color = Colors.black;
    backgroundColor = Colors.grey;
  }
  Button.darkGreyButton({super.key, required this.content}){
    color = Colors.white;
    backgroundColor = Colors.grey[900];
  }

  insert() {

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
      ),

      child: ElevatedButton(
        onPressed: () {
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
        ),
        child: Text(content,
          style: TextStyle(
            fontSize: 20,
            color: color,
          ),
        ),
      ),
    );;
  }
}
