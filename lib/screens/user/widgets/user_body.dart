import 'package:clinic_app/screens/user/widgets/user_buttons.dart';
import 'package:clinic_app/screens/user/widgets/user_data.dart';
import 'package:flutter/material.dart';

class UserBody extends StatelessWidget {
  const UserBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        UserData(),
        UserButtons(),
      ],
    );
  }
}
