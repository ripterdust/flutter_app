import 'package:clinic_app/core/screen/widgets/custom_icon_button.dart';
import 'package:clinic_app/screens/home/home_screen.dart';
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
    return const BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomIconButton(
            icon: Icons.paste_rounded,
            path: "appointments",
          ),
          CustomIconButton(
            icon: Icons.home_rounded,
            path: HomeScreen.name,
          ),
          CustomIconButton(
            icon: Icons.person_rounded,
            path: "user",
          ),
        ],
      ),
    );
  }
}
