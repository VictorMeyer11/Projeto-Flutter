import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key, 
    required this.onChanged, 
    required this.label, 
    this.obscureText = false
  }) : super(key: key);

  final Function(String) onChanged;
  final String label;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(hintText: label),
      onChanged: onChanged,
    );
  }
}