import 'package:calculator/app/model/button_model.dart';

class ButtonsUtil {
  static final List<ButtonModel> buttons = [
    ButtonModel(value: 'C'),
    ButtonModel(value: '+-', icon: 'assets/images/symbol_plus_minus.png'),
    ButtonModel(value: '%'),
    ButtonModel(value: '/', text: '÷'),
    ButtonModel(value: '7'),
    ButtonModel(value: '8'),
    ButtonModel(value: '9'),
    ButtonModel(value: '*', text: '×'),
    ButtonModel(value: '4'),
    ButtonModel(value: '5'),
    ButtonModel(value: '6'),
    ButtonModel(value: '-', text: '–'),
    ButtonModel(value: '1'),
    ButtonModel(value: '2'),
    ButtonModel(value: '3'),
    ButtonModel(value: '+'),
    ButtonModel(value: '.'),
    ButtonModel(value: '0'),
    ButtonModel(value: '<x', icon: 'assets/images/symbol_backspace.png'),
    ButtonModel(value: '='),
  ];
}
