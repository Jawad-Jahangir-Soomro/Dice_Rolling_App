import 'dart:math';

import 'package:flutter/material.dart';

final randomizor = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({Key? key}) : super(key: key);

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {

  var currentDiceValue = 2;

  void rollDice(){
    setState(() {
      currentDiceValue = randomizor.nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/images/dice-$currentDiceValue.png",width: 200,),
        const SizedBox(height: 20,),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                  fontSize: 28
              )
          ),
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}
