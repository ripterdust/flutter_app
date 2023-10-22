import 'package:clinic_app/screens/user/entities/user_menu_buttons.dart';
import 'package:flutter/material.dart';

class UserButtons extends StatelessWidget {
  const UserButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final List<UserMenuButton> menuList = [
      UserMenuButton(icon: Icons.settings, text: 'Ajustes', url: ''),
    ];

    Widget createMenuButton(int index) {
      return const Text("Hola");
    }

    return Column(
      children: [
        for (int index = 0; index < menuList.length; index++)
          createMenuButton(index),
      ],
    );
  }
}
