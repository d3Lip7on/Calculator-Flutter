import 'package:flutter/material.dart';

class greyButton extends StatelessWidget {
  greyButton({super.key, this.operation = ''});
  String operation;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(operation,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.grey),
        ),
      ),
    );
  }
}
