import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final String path;

  const CustomIconButton({
    super.key,
    required this.icon,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    onPressed() {
      context.goNamed(path);
    }

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
