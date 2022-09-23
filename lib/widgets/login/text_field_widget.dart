import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final Function(String) onChanged;
  final String label;
  final IconData icon;
  const TextFieldWidget({
    super.key,
    required this.onChanged,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        icon: Icon(icon),
        hintText: label,
      ),
    );
  }
}
