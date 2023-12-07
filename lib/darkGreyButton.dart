import 'package:flutter/material.dart';

class darkGreyButton extends StatelessWidget {
  darkGreyButton({super.key, this.operation = ''});
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
          backgroundColor: MaterialStateProperty.all(Colors.grey[900]),
        ),
      ),
    );
  }
}
