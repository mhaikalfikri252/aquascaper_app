import 'package:flutter/material.dart';

class PasswordText extends StatefulWidget {
  final String text;
  final Icon icon;

  PasswordText({
    this.text,
    this.icon,
  });

  @override
  _PasswordTextState createState() => _PasswordTextState();
}

class _PasswordTextState extends State<PasswordText> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      // autofocus: false,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
          onTap: _togglePasswordView,
          child: Icon(
            _isObscure ? Icons.visibility : Icons.visibility_off,
            color: Colors.blue,
          ),
        ),
        // isDense: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        labelText: widget.text,
        prefixIcon: widget.icon,
      ),
      obscureText: _isObscure,
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }
}
