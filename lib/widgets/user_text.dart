import 'package:flutter/material.dart';

class UserText extends StatelessWidget {
  final String text;
  final Icon icon;

  UserText({
    this.text,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        labelText: text,
        prefixIcon: icon,
      ),
    );
  }
}
