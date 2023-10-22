import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final void Function() onPressed;
  final IconData icon;
  const CustomIconButton(
      {super.key, required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final squareDecoration = BoxDecoration(
      color: colors.primary,
      borderRadius: const BorderRadius.all(
        Radius.circular(14),
      ),
    );

    return Container(
      decoration: squareDecoration,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon),
        color: Colors.white,
      ),
    );
  }
}
