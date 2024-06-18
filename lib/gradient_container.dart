import "package:flutter/material.dart";
import "dice_roller.dart";

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

   const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: double.infinity,
      // margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color1, color2],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.lightBlueAccent, width: 5)),
      child: DiceRoller()

    );
  }
}
