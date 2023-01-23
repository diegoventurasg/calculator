import 'package:calculator/app/app_dependencies.dart';
import 'package:calculator/app/stores/theme_store.dart';
import 'package:calculator/app/themes/app_theme.dart';
import 'package:calculator/app/view/home_view.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final themeStore = getIt<ThemeStore>();

    return ValueListenableBuilder(
        valueListenable: themeStore,
        builder: (context, themeMode, _) {
          bool isDarkTheme = themeMode == ThemeMode.dark;
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Calculator',
            home: const HomeView(),
            theme: AppTheme.themeData(context, isDarkTheme),
          );
        });
  }
}
