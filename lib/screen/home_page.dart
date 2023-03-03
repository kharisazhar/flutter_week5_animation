import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              if (!isClicked) {
                isClicked = true;
              } else {
                isClicked = false;
              }
              setState(() {});
            },
            child: AnimatedContainer(
                width: isClicked ? 300 : 200,
                height: isClicked ? 300 : 200,
                decoration: BoxDecoration(
                    color: isClicked ? Colors.amber : Colors.amber.shade900,
                    shape: isClicked ? BoxShape.circle : BoxShape.rectangle),
                curve: Curves.linearToEaseOut,
                duration: const Duration(seconds: 2)),
          ),
        ],
      ),
    );
  }
}
