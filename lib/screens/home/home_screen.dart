import 'package:clinic_app/core/screen/screen.dart';
import 'package:clinic_app/screens/home/widgets/home_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final BorderRadius borderRadius = const BorderRadius.only(
    topLeft: Radius.circular(50),
    topRight: Radius.circular(50),
  );

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Screen(
      title: "Home",
      body: const HomeBody(),
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
    );
  }
}
