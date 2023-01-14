import 'package:calculator/app/model/button_model.dart';

enum ButtonColor { normal, top, right }

class ButtonViewModel {
  final ButtonModel button;
  final ButtonColor type;

  ButtonViewModel({
    required this.button,
    this.type = ButtonColor.normal,
  });
}
