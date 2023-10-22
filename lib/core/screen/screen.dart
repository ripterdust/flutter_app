import 'package:clinic_app/core/screen/widgets/core_botom_navigation_bar.dart';
import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  final Widget body;
  final List<Widget> actions;
  final String title;

  const Screen({
    super.key,
    required this.body,
    this.actions = const [],
    this.title = '',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: actions,
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: body,
      ),
      bottomNavigationBar: const CoreBottomNavigationBar(),
    );
  }
}
