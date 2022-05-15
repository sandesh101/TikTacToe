import 'package:flutter/material.dart';
import 'package:tictactoe_multiplayer/widgets/buttom.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Button(onTap: () {}, buttonText: "Create Room"),
          const SizedBox(height: 20),
          Button(onTap: () {}, buttonText: "Join Room"),
        ],
      ),
    );
  }
}
