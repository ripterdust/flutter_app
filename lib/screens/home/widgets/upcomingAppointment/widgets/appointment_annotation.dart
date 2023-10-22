import 'package:flutter/material.dart';

class AppointmentAnotation extends StatelessWidget {
  final IconData icon;
  final String anotation;

  const AppointmentAnotation({
    super.key,
    required this.icon,
    required this.anotation,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    const TextStyle anotationStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        children: [
          Icon(
            icon,
            color: colors.primary,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            anotation,
            style: anotationStyle,
          ),
        ],
      ),
    );
  }
}
