import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  // NavigationRailLabelType labelType = NavigationRailLabelType.all;
  final List<Widget> _screen = [
    Container(
      color: Colors.yellow.shade50,
      alignment: Alignment.center,
      child: const Text("Home", style: TextStyle(fontSize: 40)),
    ),
    Container(
      color: Colors.blue.shade50,
      alignment: Alignment.center,
      child: const Text("Feed", style: TextStyle(fontSize: 40)),
    ),
    Container(
      color: Colors.lightGreen.shade50,
      alignment: Alignment.center,
      child: const Text("Favorite", style: TextStyle(fontSize: 40)),
    ),
    Container(
      color: Colors.orange.shade50,
      alignment: Alignment.center,
      child: const Text("Setting", style: TextStyle(fontSize: 40)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            backgroundColor: Color(0xff211f21),
            selectedIconTheme: const IconThemeData(
              color: Colors.blue,
            ),
            selectedLabelTextStyle: const TextStyle(
              fontSize: 13,
              letterSpacing: 0.8,
              decoration: TextDecoration.underline,
              decorationThickness: 1.0,
            ),
            labelType: NavigationRailLabelType.selected,
            groupAlignment: -1,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            destinations: const [
              // NavigationRailDestination(
              //   icon: Icon(
              //     Icons.home,
              //   ),
              //   label: Text("Home", style: TextStyle(color: Colors.white)),
              //   selectedIcon: Icon(Icons.home, color: Color(0xff211f21)),
              // ),
              // NavigationRailDestination(
              //     icon: Icon(
              //       Icons.feed,
              //     ),
              //     label: Text("Feed", style: TextStyle(color: Colors.white)),
              //     selectedIcon: Icon(Icons.feed, color: Color(0xff211f21))),
              // NavigationRailDestination(
              //     icon: Icon(
              //       Icons.favorite,
              //     ),
              //     label:
              //         Text("Favorite", style: TextStyle(color: Colors.white)),
              //     selectedIcon: Icon(Icons.favorite, color: Color(0xff211f21))),
              // NavigationRailDestination(
              //     icon: Icon(
              //       Icons.settings,
              //     ),
              //     label: Text(
              //       "Setting",
              //       style: TextStyle(color: Colors.white),
              //     ),
              //     selectedIcon: Icon(Icons.settings, color: Color(0xff211f21)))
            ],
            selectedIndex: _selectedIndex,
          ),
          Expanded(child: _screen[_selectedIndex])
        ],
      ),
    );
  }
}
