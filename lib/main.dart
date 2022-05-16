import 'package:flutter/material.dart';
import 'package:tictactoe_multiplayer/screens/create_room_screen.dart';
import 'package:tictactoe_multiplayer/screens/join_room_screen.dart';
import 'package:tictactoe_multiplayer/screens/main_menu.dart';
import 'package:tictactoe_multiplayer/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: bgColor),
      debugShowCheckedModeBanner: false,
      routes: {
        MainMenu.routeName: (context) => const MainMenu(),
        JoinRoom.routeName: (context) => const JoinRoom(),
        CreateRoom.routeName: (context) => const CreateRoom(),
      },
      initialRoute: MainMenu.routeName,
    );
  }
}
