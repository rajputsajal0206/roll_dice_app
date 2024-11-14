import 'package:flutter/material.dart';
import 'dice_roller.dart';

void main() {
  runApp(const RollDiceApp());
}

class RollDiceApp extends StatelessWidget {
  const RollDiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Roll Dice App',
      home: Scaffold(body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.deepPurple,
            Colors.blue,
          ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )
        ),
        child: const Center(
          child: DiceRoller(),
        ),
      ),),
    );
  }
}

