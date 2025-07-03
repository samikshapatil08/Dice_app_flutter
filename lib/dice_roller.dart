import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentDiceRoll.png', width: 200),
        SizedBox(
          height: 20,
        ),
        OutlinedButton(
          onPressed: () {
            setState(() {
              currentDiceRoll = Random().nextInt(6) + 1;
            });
          },
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.yellow),
            foregroundColor: WidgetStateProperty.all(
              Color.fromARGB(255, 46, 30, 71),
            ),
            overlayColor: WidgetStateProperty.all(Colors.orangeAccent),
          ),
          child: Text('Roll'),
        ),
      ],
    );
  }
}
