import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class ThemeStore extends ValueNotifier<ThemeMode> implements Disposable {
  ThemeStore() : super(ThemeMode.light);

  void changeTheme() =>
      value = value == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;

  @override
  FutureOr onDispose() {
    super.dispose();
  }
}
