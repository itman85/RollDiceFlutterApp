import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    // implement createState
    return _DiceRollerState();
  }
}

// underscore make this class be private use in this file
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;
  // this action requires to use a stateful widget to change the UI state of the widget
  void rollDice() {
    // update state of a stateful widget
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // implement build
    return Column(
        mainAxisSize: MainAxisSize.min, // center vertical
        children: [
          Image.asset(
            'assets/images/dice-$currentDiceRoll.png',
            width: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                  padding:
                      const EdgeInsets.only(top: 0), // use SizedBox instead
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 28)),
              child: const Text('Roll Dice'))
        ]);
  }
}
