import 'package:calculator/app/controllers/calculator_controller.dart';
import 'package:calculator/app/stores/calculator_store.dart';
import 'package:calculator/app/stores/theme_store.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.I;

void configureDependencies() {
  getIt.registerSingleton(ThemeStore());
  getIt.registerSingleton(CalculatorStore());
  getIt.registerSingleton(CalculatorController(getIt.get<CalculatorStore>()));
}
