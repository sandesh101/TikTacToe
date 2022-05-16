import 'package:flutter/material.dart';
import 'package:tictactoe_multiplayer/screens/create_room_screen.dart';
import 'package:tictactoe_multiplayer/screens/join_room_screen.dart';
import 'package:tictactoe_multiplayer/widgets/buttom.dart';

import '../responsive/responsive.dart';

class MainMenu extends StatelessWidget {
  static String routeName = '/main-menu';
  const MainMenu({Key? key}) : super(key: key);

  void createRoom(BuildContext context) {
    Navigator.pushNamed(context, CreateRoom.routeName);
  }

  void joinRoom(BuildContext context) {
    Navigator.pushNamed(context, JoinRoom.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Button(onTap: () => createRoom(context), buttonText: "Create Room"),
            const SizedBox(height: 20),
            Button(onTap: () => joinRoom(context), buttonText: "Join Room"),
          ],
        ),
      ),
    );
  }
}
