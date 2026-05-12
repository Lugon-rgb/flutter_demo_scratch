import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // variable
  int _couter = 0;

  // method
  void _incrementCounter() {
    // setstate rebuilds the widget
    setState(() {
      _couter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You pushed the buttom this many times:"),

            Text(_couter.toString(), style: TextStyle(fontSize: 40)),

            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text("Increment!"),
            ),
          ],
        ),
      ),
    );
  }
}
