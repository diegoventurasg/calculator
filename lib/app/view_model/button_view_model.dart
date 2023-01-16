import 'package:calculator/app/model/button_model.dart';

enum ButtonColor { normal, top, right }

class ButtonViewModel {
  final ButtonModel button;
  final int index;

  ButtonViewModel({
    required this.button,
    required this.index,
  });

  String get value => button.value;

  String get text => button.text ?? button.value;

  String? get icon => button.icon;

  ButtonColor get buttonColor {
    if (index < 3) {
      return ButtonColor.right;
    } else if ((index + 1) % 4 == 0) {
      return ButtonColor.top;
    } else {
      return ButtonColor.normal;
    }
  }
}
