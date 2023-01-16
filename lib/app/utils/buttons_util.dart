import 'package:calculator/app/view_model/button_view_model.dart';

class ButtonsUtil {
  static final List<ButtonViewModel> buttons = [
    ButtonViewModel(value: 'C', buttonColor: ButtonColor.top),
    ButtonViewModel(
      value: '+-',
      icon: 'assets/images/symbol_plus_minus.png',
      buttonColor: ButtonColor.top,
    ),
    ButtonViewModel(value: '%', buttonColor: ButtonColor.top),
    ButtonViewModel(value: '/', text: '÷', buttonColor: ButtonColor.right),
    ButtonViewModel(value: '7', buttonColor: ButtonColor.normal),
    ButtonViewModel(value: '8', buttonColor: ButtonColor.normal),
    ButtonViewModel(value: '9', buttonColor: ButtonColor.normal),
    ButtonViewModel(value: '*', text: '×', buttonColor: ButtonColor.right),
    ButtonViewModel(value: '4', buttonColor: ButtonColor.normal),
    ButtonViewModel(value: '5', buttonColor: ButtonColor.normal),
    ButtonViewModel(value: '6', buttonColor: ButtonColor.normal),
    ButtonViewModel(value: '-', text: '–', buttonColor: ButtonColor.right),
    ButtonViewModel(value: '1', buttonColor: ButtonColor.normal),
    ButtonViewModel(value: '2', buttonColor: ButtonColor.normal),
    ButtonViewModel(value: '3', buttonColor: ButtonColor.normal),
    ButtonViewModel(value: '+', buttonColor: ButtonColor.right),
    ButtonViewModel(value: '.', buttonColor: ButtonColor.normal),
    ButtonViewModel(value: '0', buttonColor: ButtonColor.normal),
    ButtonViewModel(
      value: '<x',
      icon: 'assets/images/symbol_backspace.png',
      buttonColor: ButtonColor.normal,
    ),
    ButtonViewModel(value: '=', buttonColor: ButtonColor.right),
  ];
}
