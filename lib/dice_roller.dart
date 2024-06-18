import "dart:math";

import "package:flutter/material.dart";

final randomizer = Random();
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentRoll=2;
  void rollDice() {
    setState(() {
      currentRoll = randomizer.nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Container(
          width: 100,
          height: 100,
          // color: Colors.red,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(color: Colors.black, width: 5))),
      Image.asset(
        "assets/images/dice-$currentRoll.png",
        width: 50,
      ),
      TextButton(
        onPressed: rollDice,
        style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            foregroundColor: Colors.white,
            backgroundColor: Colors.lightGreen,
            textStyle: const TextStyle(fontWeight: FontWeight.bold)),
        child: const Text(
          "Roll",
        ),
        // TextStyle(color: Colors.black, )
      )
    ]);
  }
}
