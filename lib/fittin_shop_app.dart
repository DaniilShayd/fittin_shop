import 'package:flutter/material.dart';
import 'package:fittin_shop/navigation/app_router.dart';
class FittinShopApp extends StatelessWidget {
  FittinShopApp({super.key});

  final AppRouter _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
      ),
      routerConfig: _router.config(),
    );
  }
}
