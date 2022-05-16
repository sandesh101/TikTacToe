import 'package:flutter/material.dart';
import 'package:tictactoe_multiplayer/responsive/responsive.dart';
import 'package:tictactoe_multiplayer/widgets/buttom.dart';
import 'package:tictactoe_multiplayer/widgets/custom_text.dart';
import 'package:tictactoe_multiplayer/widgets/custom_textfield.dart';

class JoinRoom extends StatefulWidget {
  static String routeName = '/join-room';
  const JoinRoom({Key? key}) : super(key: key);

  @override
  _JoinRoomState createState() => _JoinRoomState();
}

class _JoinRoomState extends State<JoinRoom> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _gameIdController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _gameIdController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomText(
                shadow: [
                  Shadow(blurRadius: 10, color: Colors.blue),
                ],
                text: "Join Room",
                fontSize: 70,
              ),
              SizedBox(
                height: size.height * 0.08,
              ),
              CustomTextField(
                  controller: _nameController, hintText: "Enter Your Nickname"),
              SizedBox(
                height: size.height * 0.04,
              ),
              CustomTextField(
                  controller: _gameIdController, hintText: "Enter Game ID"),
              SizedBox(
                height: size.height * 0.04,
              ),
              Button(onTap: () {}, buttonText: "Join"),
            ],
          ),
        ),
      ),
    );
  }
}
