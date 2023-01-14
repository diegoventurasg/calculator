import 'package:calculator/app/utils/buttons_util.dart';
import 'package:calculator/app/view_model/button_view_model.dart';
import 'package:collection/collection.dart';

class CalculatorViewModel {
  final _buttons = ButtonsUtil.buttons;

  List<ButtonViewModel> get buttons => _buttons
      .mapIndexed((i, e) => ButtonViewModel(button: e, index: i))
      .toList();
}
