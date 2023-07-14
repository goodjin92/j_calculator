import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: CalculatorScreen(),
    ),
  );
}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  
  final String res = '0'; // 계산 결과

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.grey[200],
          child: Column(
            children: [
              // Title
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                  Text(
                    '      계산기',
                    style: TextStyle(),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.history),
                  ),
                ],
              ),
              // KeyPad
              Expanded(
                child: Column(
                  children: [
                    Text(
                      '7 + 2 - 3 (계산식)',
                      style: TextStyle(fontSize: 21.0),
                    ),
                    Text(
                      '6 (답)',
                      style: TextStyle(fontSize: 32.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    // Button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _customButton('C'),
                        _customButton('( )'),
                        _customButton('%'),
                        _customButton('÷'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _customButton('7'),
                        _customButton('8'),
                        _customButton('9'),
                        _customButton('X'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _customButton('4'),
                        _customButton('5'),
                        _customButton('6'),
                        _customButton('-'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _customButton('1'),
                        _customButton('2'),
                        _customButton('3'),
                        _customButton('+'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _customButton('0'),
                        _customButton('00'),
                        _customButton('.'),
                        _customButton('='),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _customButton(String text) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(text),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
    );
  }
}
