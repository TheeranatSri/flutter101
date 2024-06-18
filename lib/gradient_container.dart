import "package:flutter/material.dart";

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  // const GradientContainer.purple({super.key})
  //     : color1 = Colors.deepPurple,
  //       color2 = Colors.indigoAccent;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: double.infinity,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          gradient:  LinearGradient(
              colors: [color1, color2],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.lightBlueAccent, width: 5)),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Container(
            width: 100,
            height: 100,
            // color: Colors.red,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(color: Colors.black, width: 5))),
        // Container(
        //     width: 100,
        //     height: 100,
        //     margin: const EdgeInsets.all(10),
        //     decoration: BoxDecoration(
        //         color: Colors.green,
        //         border: Border.all(color: Colors.black, width: 5))),
        // Container(
        //     height: 100,
        //     width: 100,
        //     margin: const EdgeInsets.all(10),
        //     decoration: BoxDecoration(
        //         color: Colors.yellow,
        //         border: Border.all(color: Colors.black, width: 5)))
      ]),
    );
  }
}
