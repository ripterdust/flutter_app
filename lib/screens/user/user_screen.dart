import 'package:clinic_app/core/screen/screen.dart';
import 'package:clinic_app/screens/user/widgets/user_body.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  static const String name = 'user';

  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Screen(
      title: "User",
      body: UserBody(),
    );
  }
}
