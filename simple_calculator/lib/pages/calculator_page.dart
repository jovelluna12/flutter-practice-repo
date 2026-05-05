import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String _num1 = '';
  String _num2 = '';
  String _result = '';
  String displayNumber = '';
  String _operation = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 200, child: Center(child: Text(displayNumber))),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: [
                // Row 1
                buildButton('C', clear),
                buildButton('/', () => setOperation('/')),
                buildButton('*', () => setOperation('*')),

                // Row 2
                buildNumberButton(7),
                buildNumberButton(8),
                buildNumberButton(9),

                // Row 3
                buildNumberButton(4),
                buildNumberButton(5),
                buildNumberButton(6),

                // Row 4
                buildNumberButton(1),
                buildNumberButton(2),
                buildNumberButton(3),

                // Row 5
                buildNumberButton(0),
                buildButton('+', () => setOperation('+')),
                buildButton('-', () => setOperation('-')),

                // Row 6
                buildButton('=', calculate),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildButton(String text, VoidCallback onPressed) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }

  Widget buildNumberButton(int number) {
    return buildButton(number.toString(), () {
      if (_operation == '') {
        setNum1(number);
      } else {
        setNum2(number);
      }
    });
  }

  void clear() {
    setState(() {
      _num1 = '';
      _num2 = '';
      displayNumber = '';
      _result = '0';
      _operation = '';
    });
  }

  void setNum1(int number) {
    setState(() {
      _num1 = _num1 + number.toString();
      displayNumber = _num1;
    });
  }

  void setNum2(int number) {
    setState(() {
      _num2 = _num2 + number.toString();
      displayNumber = _num2;
    });
  }

  void setOperation(String operation) {
    setState(() {
      _operation = operation;
    });
  }

  void calculate() {
    setState(() {
      double num1 = double.parse(_num1);
      double num2 = double.parse(_num2);

      switch (_operation) {
        case '+':
          _result = (num1 + num2).toString();
          displayNumber = _result;
          break;
        case '-':
          _result = (num1 - num2).toString();
          displayNumber = _result;
          break;
        case '*':
          _result = (num1 * num2).toString();
          displayNumber = _result;
          break;
        case '/':
          if (num2 != 0) {
            _result = (num1 / num2).toString();
          } else {
            _result = 'Error';
          }
          displayNumber = _result;
          break;
        default:
          _result = 'Error';
      }
    });
  }
}
