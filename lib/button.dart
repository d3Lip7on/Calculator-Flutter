import 'package:flutter/material.dart';

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


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(content,
          style: TextStyle(
            fontSize: 20,
            color: color,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
        ),
      ),
    );;
  }
}
