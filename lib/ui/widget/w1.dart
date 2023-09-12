import 'package:flutter/material.dart';

class W1 extends StatelessWidget {
  const W1({super.key, required this.callbackIncrement, required this.callbackDecrement, required this.value});
  //color: Theme.of(context).primaryColor,
  // color: Theme.of(context).colorScheme.inversePrimary,
  // container margin: const EdgeInsets.all(10),
  // container padding: const EdgeInsets.all(10),

  final Function() callbackIncrement;
  final Function() callbackDecrement;
  final double value;
  
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$value',
          key: Key('W1Value'),
        ),
        IconButton(onPressed: callbackIncrement, icon: Icon(Icons.add), key: Key('W1Add')),
        IconButton(onPressed: callbackDecrement, icon: Icon(Icons.remove), key: Key('W1Sub'))
      ],
    );
  }
}
