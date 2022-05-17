import 'package:flutter/material.dart';
import 'package:tictactoe_multiplayer/resources/socket_methods.dart';
import 'package:tictactoe_multiplayer/responsive/responsive.dart';
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
  final TextEditingController _nameController = TextEditingController();
  final SocketMethods _socketMethods = SocketMethods();

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
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
                text: "Create Room",
                fontSize: 70,
              ),
              SizedBox(
                height: size.height * 0.08,
              ),
              CustomTextField(
                  controller: _nameController, hintText: "Enter your nickname"),
              SizedBox(
                height: size.height * 0.04,
              ),
              Button(
                  onTap: () => _socketMethods.createRoom(_nameController.text),
                  buttonText: "Create"),
            ],
          ),
        ),
      ),
    );
  }
}
