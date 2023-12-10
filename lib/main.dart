import 'package:flutter/material.dart';
import 'package:calculator/button.dart';
import 'package:math_expressions/math_expressions.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String _expression = '0';
  double gap = 15;

  double a = 0;
  double b = 0;
  String? operation;
  String variable = 'a';

  double evaluateExpression(String expression) {
    Parser parser = Parser();
    Expression exp = parser.parse(expression);
    ContextModel cm = ContextModel();
    return exp.evaluate(EvaluationType.REAL, cm);
  }



  void updateExpression(String value) {
    switch (value){
      case 'AC':
        setState(() {
          _expression = '';
          a = 0;
          b = 0;
        });
        break;
      case '+/-':
        setState(() {
          _expression = (-(double.parse(_expression))).toString();
        });
        break;
      case '%':
        setState(() {
          _expression = (double.parse(_expression)/100).toString();
        });
        break;
      case '=':
        try{
          double result = evaluateExpression(_expression);
          setState(() {
            _expression = result.toString();
          });
        }
        catch (err){
          setState(() {
            _expression = 'ERROR';
          });
        }
        break;

      default:
        setState(() {
          _expression += value;
        });

    }

  }


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
              Text(
              _expression,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 80,
              ),
            ),
                SizedBox(width: gap,)
              ],
            ),
            SizedBox(height: gap,),
            Row(
              children: [
                SizedBox(width: gap),
                Expanded(
                  flex: 1,
                  child: Button.greyButton(content: 'AC', onPressed: () => updateExpression('AC')),
                ),
                SizedBox(width: gap),
                Expanded(
                  flex: 1,
                  child: Button.greyButton(content: '+/-', onPressed: () => updateExpression('+/-')),
                ),
                SizedBox(width: gap),
                Expanded(
                  flex: 1,
                  child: Button.greyButton(content: '%', onPressed: () => updateExpression('%'))
                ),
                SizedBox(width: gap),
                Expanded(
                  flex: 1,
                  child: Button.orangeButton(content: '/', onPressed: () => updateExpression('/'))
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
                  child: Button.darkGreyButton(content: '7', onPressed: () => updateExpression('7')),
                ),
                SizedBox(width: gap),
                Expanded(
                  flex: 1,
                  child: Button.darkGreyButton(content: '8', onPressed: () => updateExpression('8')),
                ),
                SizedBox(width: gap),
                Expanded(
                    flex: 1,
                    child: Button.darkGreyButton(content: '9', onPressed: () => updateExpression('9'))
                ),
                SizedBox(width: gap),
                Expanded(
                    flex: 1,
                    child: Button.orangeButton(content: '*', onPressed: () => updateExpression('*'))
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
                  child: Button.darkGreyButton(content: '4', onPressed: () => updateExpression('4')),
                ),
                SizedBox(width: gap),
                Expanded(
                  flex: 1,
                  child: Button.darkGreyButton(content: '5', onPressed: () => updateExpression('5')),
                ),
                SizedBox(width: gap),
                Expanded(
                    flex: 1,
                    child: Button.darkGreyButton(content: '6', onPressed: () => updateExpression('6'))
                ),
                SizedBox(width: gap),
                Expanded(
                    flex: 1,
                    child: Button.orangeButton(content: '-', onPressed: () => updateExpression('-'))
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
                  child: Button.darkGreyButton(content: '1', onPressed: () => updateExpression('1')),
                ),
                SizedBox(width: gap),
                Expanded(
                  flex: 1,
                  child: Button.darkGreyButton(content: '2', onPressed: () => updateExpression('2')),
                ),
                SizedBox(width: gap),
                Expanded(
                    flex: 1,
                    child: Button.darkGreyButton(content: '3', onPressed: () => updateExpression('3'))
                ),
                SizedBox(width: gap),
                Expanded(
                    flex: 1,
                    child: Button.orangeButton(content: '+', onPressed: () => updateExpression('+'))
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
                  child: Button.darkGreyButton(content: '0', onPressed: () => updateExpression('0')),
                ),
                SizedBox(width: gap),
                Expanded(
                  flex: 1,
                  child: Button.darkGreyButton(content: ',' , onPressed: () => updateExpression(',')),
                ),
                SizedBox(width: gap),
                Expanded(
                    flex: 1,
                    child: Button.orangeButton(content: '=', onPressed: () => updateExpression('='))
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
