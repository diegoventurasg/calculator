import 'package:calculator/app/app_dependencies.dart';
import 'package:calculator/app/stores/theme_store.dart';
import 'package:flutter/material.dart';

class ThemeSwitchWidget extends StatefulWidget {
  const ThemeSwitchWidget({super.key});

  @override
  State<ThemeSwitchWidget> createState() => _ThemeSwitchWidgetState();
}

class _ThemeSwitchWidgetState extends State<ThemeSwitchWidget> {
  final themeStore = getIt<ThemeStore>();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: themeStore,
      builder: (_, themeMode, ___) {
        bool isDarkTheme = themeMode == ThemeMode.dark;
        return Center(
          child: GestureDetector(
            onTap: themeStore.changeTheme,
            child: Stack(
              alignment: Alignment.center,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.fastOutSlowIn,
                  height: 32,
                  width: 72,
                  alignment: isDarkTheme
                      ? Alignment.centerLeft
                      : Alignment.centerRight,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.tertiary,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.fastOutSlowIn,
                    height: 24,
                    width: 24,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                Positioned(
                  left: 8,
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 500),
                    opacity: isDarkTheme ? 0 : 1,
                    curve: Curves.fastOutSlowIn,
                    child: Image.asset(
                      'assets/images/sun.png',
                      height: 24,
                      width: 24,
                    ),
                  ),
                ),
                Positioned(
                  right: 8,
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 500),
                    opacity: isDarkTheme ? 1 : 0,
                    curve: Curves.fastOutSlowIn,
                    child: Image.asset(
                      'assets/images/moon.png',
                      height: 24,
                      width: 24,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
