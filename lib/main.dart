import 'package:clinic_app/core/routers/app_router.dart';
import 'package:clinic_app/core/themes/app_theme.dart';
import 'package:clinic_app/core/providers/base_provider.dart';
import 'package:clinic_app/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final appTheme = AppTheme(
    dark: false,
    selectedColor: 1,
  );

  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => BaseProvider(),
        )
      ],
      child: MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
        theme: appTheme.theme(),
      ),
    );
  }
}
