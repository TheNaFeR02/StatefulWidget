import 'package:flutter/material.dart';

import '../widget/w1.dart';
import '../widget/w2.dart';
import '../widget/w3.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        children: [
          IconButton(
              onPressed: null, icon: Icon(Icons.refresh), key: Key('Refresh')),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              W1(value:this.value, callbackIncrement:_incrementCounterW1,  callbackDecrement: _decrementCounterW1,), 
              W2(value: value,), 
              W3(value: value, callbackIncrementOne: _incrementCounterW2, callbackDecrementOne: _decrementCounterW2,)],
          ),
        ],
      )),
    );
  }

  void _incrementCounterW1() {
    setState(() {
      // parse string to double and increment in 0.1
      value = value + 0.1;
    });
  }

  void _decrementCounterW1() {
    setState(() {
      // parse string to double and increment in 0.1
      value = value - 0.1;
    });
  }

  void _incrementCounterW2() {
    setState(() {
      value = value + 1.0;
    });
  }

  void _decrementCounterW2() {
    setState(() {
      value = value - 1.0;
    });
  }
}
