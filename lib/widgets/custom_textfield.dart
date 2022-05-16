import 'package:flutter/material.dart';

import 'package:tictactoe_multiplayer/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.blue,
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ]),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            fillColor: bgColor,
            filled: true,
            hintText: hintText,
          ),
        ));
  }
}
