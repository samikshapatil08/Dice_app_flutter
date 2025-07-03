import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';


class GradientContainer extends StatelessWidget {
  const GradientContainer(this.c1, {super.key});
  final Color c1;
  @override

  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [
            Color.fromARGB(255, 46, 30, 71),
            c1,
            Color.fromARGB(255, 46, 30, 71),
          ],
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});
  final String text;
  @override
  Widget build(context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 20,
        color: const Color.fromARGB(255, 3, 24, 5),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
