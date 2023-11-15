import 'package:flutter/material.dart';
import 'dart:math';

final _random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var _diceValue = 1;

  void _onPressedRollDice() {
    setState(() {
      _diceValue = _random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$_diceValue.png',
          width: 200,
        ),
        const SizedBox(height: 28),
        TextButton(
            onPressed: _onPressedRollDice,
            style: TextButton.styleFrom(
              // padding: const EdgeInsets.symmetric(vertical: 28),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
            child: const Text('Roll Dice'))
      ],
    );
  }
}
