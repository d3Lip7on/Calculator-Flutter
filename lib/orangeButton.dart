import 'package:flutter/material.dart';

class orangeButton extends StatelessWidget {
  orangeButton({super.key, this.operation=''});
  String operation;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(operation,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.orangeAccent),
        ),
      ),
    );;
  }
}
