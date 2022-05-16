import 'package:flutter/material.dart';
import 'package:tictactoe_multiplayer/widgets/buttom.dart';
import 'package:tictactoe_multiplayer/widgets/custom_text.dart';
import 'package:tictactoe_multiplayer/widgets/custom_textfield.dart';

class CreateRoom extends StatefulWidget {
  static String routeName = '/create-room';
  const CreateRoom({Key? key}) : super(key: key);

  @override
  _CreateRoomState createState() => _CreateRoomState();
}

class _CreateRoomState extends State<CreateRoom> {
  // final size = MediaQuery.of(context).size;
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomText(
              shadow: [
                Shadow(blurRadius: 10, color: Colors.blue),
              ],
              text: "Create Room",
              fontSize: 70,
            ),
            const SizedBox(
              height: 40,
            ),
            CustomTextField(
                controller: _nameController, hintText: "Enter your nickname"),
            const SizedBox(
              height: 40,
            ),
            Button(onTap: () {}, buttonText: "Create"),
          ],
        ),
      ),
    );
  }
}
