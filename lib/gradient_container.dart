import 'package:flutter/material.dart';
//import 'package:first_app/styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2,
      {super.key}); // equivalent to const GradientContainer(): super(key: null);

  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.deepOrange;

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color1, color2],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Center(
          child: Column(children: [
            Image.asset(
              'assets/images/dice-1.png',
              width: 200,
            ),
            TextButton(onPressed: rollDice, child: const Text('Roll Dice'))
          ]),
        ));
  }

  void rollDice() {}
}
