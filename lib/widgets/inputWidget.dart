import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final String title;
  final TextEditingController controller;

  const InputWidget({super.key, required this.title, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        decoration:
            InputDecoration(label: Text(title), border: OutlineInputBorder()),
      ),
    );
  }
}
