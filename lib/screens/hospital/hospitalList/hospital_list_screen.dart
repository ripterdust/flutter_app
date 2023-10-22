import 'package:clinic_app/core/screen/screen.dart';
import 'package:flutter/material.dart';

class HospitalListScreen extends StatelessWidget {
  static const String name = 'hospitals';

  const HospitalListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Screen(
      title: "Available hospitals",
      body: Text("Hola mundo"),
    );
  }
}
