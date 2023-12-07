import 'package:calculator/darkGreyButton.dart';
import 'package:flutter/material.dart';
import 'package:calculator/greyButton.dart';
import 'package:calculator/orangeButton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double result = 0;
  double gap = 15;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepOrangeAccent,

      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(result.toString())
              ],
            ),
            SizedBox(height: gap,),
            Row(
              children: [
                SizedBox(width: gap),
                Expanded(
                  flex: 1,
                  child: greyButton(operation: 'AC'),
                ),
                SizedBox(width: gap),
                Expanded(
                  flex: 1,
                  child: greyButton(operation: '+/-'),
                ),
                SizedBox(width: gap),
                Expanded(
                  flex: 1,
                  child: greyButton(operation: '%')
                ),
                SizedBox(width: gap),
                Expanded(
                  flex: 1,
                  child: orangeButton(operation: '/',)
                ),
                SizedBox(width: gap),
              ],
            ),
            SizedBox(height: gap,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: gap),
                Expanded(
                  flex: 1,
                  child: darkGreyButton(operation: '7'),
                ),
                SizedBox(width: gap),
                Expanded(
                  flex: 1,
                  child: darkGreyButton(operation: '8'),
                ),
                SizedBox(width: gap),
                Expanded(
                    flex: 1,
                    child: darkGreyButton(operation: '9')
                ),
                SizedBox(width: gap),
                Expanded(
                    flex: 1,
                    child: orangeButton(operation: '*',)
                ),
                SizedBox(width: gap),
              ],
            ),
            SizedBox(height: gap,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: gap),
                Expanded(
                  flex: 1,
                  child: darkGreyButton(operation: '4'),
                ),
                SizedBox(width: gap),
                Expanded(
                  flex: 1,
                  child: darkGreyButton(operation: '5'),
                ),
                SizedBox(width: gap),
                Expanded(
                    flex: 1,
                    child: darkGreyButton(operation: '6')
                ),
                SizedBox(width: gap),
                Expanded(
                    flex: 1,
                    child: orangeButton(operation: '-',)
                ),
                SizedBox(width: gap),
              ],
            ),
            SizedBox(height: gap,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: gap),
                Expanded(
                  flex: 1,
                  child: darkGreyButton(operation: '1'),
                ),
                SizedBox(width: gap),
                Expanded(
                  flex: 1,
                  child: darkGreyButton(operation: '2'),
                ),
                SizedBox(width: gap),
                Expanded(
                    flex: 1,
                    child: darkGreyButton(operation: '3')
                ),
                SizedBox(width: gap),
                Expanded(
                    flex: 1,
                    child: orangeButton(operation: '+',)
                ),
                SizedBox(width: gap),
              ],
            ),
            SizedBox(height: gap,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,

              children: [
                SizedBox(width: gap),
                Expanded(
                  flex: 2,
                  child: darkGreyButton(operation: '0'),
                ),
                SizedBox(width: gap),
                Expanded(
                  flex: 1,
                  child: darkGreyButton(operation: ','),
                ),
                SizedBox(width: gap),
                Expanded(
                    flex: 1,
                    child: orangeButton(operation: '=',)
                ),
                SizedBox(width: gap),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
