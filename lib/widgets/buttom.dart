import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final VoidCallback onTap;
  final String buttonText;
  const Button({Key? key, required this.onTap, required this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(
          width,
          50,
        ),
      ),
      child: Text(
        buttonText,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
