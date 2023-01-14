import 'package:calculator/app/model/button_model.dart';

class ButtonsUtil {
  static final List<ButtonModel> buttons = [
    ButtonModel(text: 'C'),
    ButtonModel(
      text: '+-',
      image: 'assets/images/symbol_plus_minus.png',
    ),
    ButtonModel(text: '%'),
    ButtonModel(text: '÷'),
    ButtonModel(text: '7'),
    ButtonModel(text: '8'),
    ButtonModel(text: '9'),
    ButtonModel(text: 'x'),
    ButtonModel(text: '4'),
    ButtonModel(text: '5'),
    ButtonModel(text: '6'),
    ButtonModel(text: '–'),
    ButtonModel(text: '1'),
    ButtonModel(text: '2'),
    ButtonModel(text: '3'),
    ButtonModel(text: '+'),
    ButtonModel(text: '.'),
    ButtonModel(text: '0'),
    ButtonModel(
      text: '<x',
      image: 'assets/images/symbol_backspace.png',
    ),
    ButtonModel(text: '='),
  ];
}
