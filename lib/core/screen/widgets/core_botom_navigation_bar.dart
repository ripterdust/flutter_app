import 'package:clinic_app/core/screen/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CoreBottomNavigationBar extends StatelessWidget {
  const CoreBottomNavigationBar({super.key});

  final borderRadius = const BorderRadius.only(
    topLeft: Radius.circular(30),
    topRight: Radius.circular(30),
    bottomLeft: Radius.circular(30),
    bottomRight: Radius.circular(30),
  );

  @override
  Widget build(BuildContext context) {
    onPressButton() {}

    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomIconButton(
            onPressed: onPressButton,
            icon: Icons.paste_rounded,
          ),
          CustomIconButton(
            onPressed: onPressButton,
            icon: Icons.home_rounded,
          ),
          CustomIconButton(
            onPressed: onPressButton,
            icon: Icons.person_rounded,
          ),
        ],
      ),
    );
  }
}
