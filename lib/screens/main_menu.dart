import 'package:flutter/material.dart';
import 'package:tictactoe_multiplayer/widgets/buttom.dart';

import '../responsive/responsive.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Button(onTap: () {}, buttonText: "Create Room"),
            const SizedBox(height: 20),
            Button(onTap: () {}, buttonText: "Join Room"),
          ],
        ),
      ),
    );
  }
}
