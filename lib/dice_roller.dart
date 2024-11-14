import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {

  //var data type insures that value of currentDiceValue can be changed at any
  //moment in the code
  var currentDiceValue = 2;

  void rollDice() {
    setState(() {
      //Random().nextInt(a) --> will generate any random value between 0 and a
      currentDiceValue = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        //Image.asset(PATH) --> Here PATH must be added in pubspec.yaml file
        Image.asset(
          'assets/images/dice-$currentDiceValue.png',
          width: 200.0,
        ),
        const SizedBox(
          height: 20.0,
        ),
        TextButton(
          onPressed: rollDice,
          child: const Text('Roll Dice',
            style: TextStyle(fontSize: 20.0,color: Colors.amber),
          ),
        )
      ],
    );
  }
}
