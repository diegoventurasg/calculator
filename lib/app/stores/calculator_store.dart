import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';

class CalculatorStore implements Disposable {
  ValueNotifier<String> entries = ValueNotifier('');
  ValueNotifier<String> result = ValueNotifier('');

  void setData({String? entries, String? result}) {
    this.entries.value = entries ?? this.entries.value;
    this.result.value = result ?? this.result.value;
  }

  void clear() {
    entries.value = '';
    result.value = '';
  }

  @override
  FutureOr onDispose() {
    entries.dispose();
    result.dispose();
  }
}
