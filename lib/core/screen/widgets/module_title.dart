import 'package:flutter/material.dart';

class ModuleTitle extends StatelessWidget {
  final String title;
  const ModuleTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.left,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
