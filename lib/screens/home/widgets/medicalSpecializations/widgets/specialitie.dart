import 'package:flutter/material.dart';

class Speciality extends StatelessWidget {
  final IconData icon;
  final String text;

  const Speciality({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final squareDecoration = BoxDecoration(
      color: colors.primary,
      borderRadius: const BorderRadius.all(
        Radius.circular(14),
      ),
    );

    onTap() {}

    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: squareDecoration,
            child: Center(
              child: Icon(
                icon,
                size: 70,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
