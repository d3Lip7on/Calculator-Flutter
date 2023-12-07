import 'package:flutter/material.dart';
import 'package:calculator/button.dart';
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
                  child: Button.greyButton(content: 'AC'),
                ),
                SizedBox(width: gap),
                Expanded(
                  flex: 1,
                  child: Button.greyButton(content: '+/-'),
                ),
                SizedBox(width: gap),
                Expanded(
                  flex: 1,
                  child: Button.greyButton(content: '%')
                ),
                SizedBox(width: gap),
                Expanded(
                  flex: 1,
                  child: Button.orangeButton(content: '/',)
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
                  child: Button.darkGreyButton(content: '7'),
                ),
                SizedBox(width: gap),
                Expanded(
                  flex: 1,
                  child: Button.darkGreyButton(content: '8'),
                ),
                SizedBox(width: gap),
                Expanded(
                    flex: 1,
                    child: Button.darkGreyButton(content: '9')
                ),
                SizedBox(width: gap),
                Expanded(
                    flex: 1,
                    child: Button.orangeButton(content: '*',)
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
                  child: Button.darkGreyButton(content: '4'),
                ),
                SizedBox(width: gap),
                Expanded(
                  flex: 1,
                  child: Button.darkGreyButton(content: '5'),
                ),
                SizedBox(width: gap),
                Expanded(
                    flex: 1,
                    child: Button.darkGreyButton(content: '6')
                ),
                SizedBox(width: gap),
                Expanded(
                    flex: 1,
                    child: Button.orangeButton(content: '-',)
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
                  child: Button.darkGreyButton(content: '1'),
                ),
                SizedBox(width: gap),
                Expanded(
                  flex: 1,
                  child: Button.darkGreyButton(content: '2'),
                ),
                SizedBox(width: gap),
                Expanded(
                    flex: 1,
                    child: Button.darkGreyButton(content: '3')
                ),
                SizedBox(width: gap),
                Expanded(
                    flex: 1,
                    child: Button.orangeButton(content: '+',)
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
                  child: Button.darkGreyButton(content: '0'),
                ),
                SizedBox(width: gap),
                Expanded(
                  flex: 1,
                  child: Button.darkGreyButton(content: ','),
                ),
                SizedBox(width: gap),
                Expanded(
                    flex: 1,
                    child: Button.orangeButton(content: '=',)
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
