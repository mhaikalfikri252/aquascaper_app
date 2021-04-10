import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;

  Button(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 360,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          elevation: 10,
          textStyle: TextStyle(color: Colors.white),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
