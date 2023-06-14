import 'package:flutter/material.dart';
import 'package:practice_academind/dice_roller.dart';
import 'package:practice_academind/styled_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {

  final List<Color> colors;

  const GradientContainer({Key? key, required this.colors}) : super(key: key);

  // You can also add Multiple constructors like this (below is a constructor)

  // GradientContainer.purple({super.key}): colors = [
  //   Colors.black,
  //   Colors.white
  // ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
