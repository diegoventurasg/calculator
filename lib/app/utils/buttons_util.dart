import 'package:calculator/app/view_model/button_view_model.dart';

class ButtonsUtil {
  static final List<ButtonViewModel> buttons = [
    ButtonViewModel(value: 'C', colorType: ButtonColorType.top),
    ButtonViewModel(
      value: '+-',
      icon: 'assets/images/symbol_plus_minus.png',
      colorType: ButtonColorType.top,
    ),
    ButtonViewModel(value: '%', colorType: ButtonColorType.top),
    ButtonViewModel(value: '/', text: '÷', colorType: ButtonColorType.right),
    ButtonViewModel(value: '7', colorType: ButtonColorType.normal),
    ButtonViewModel(value: '8', colorType: ButtonColorType.normal),
    ButtonViewModel(value: '9', colorType: ButtonColorType.normal),
    ButtonViewModel(value: '*', text: '×', colorType: ButtonColorType.right),
    ButtonViewModel(value: '4', colorType: ButtonColorType.normal),
    ButtonViewModel(value: '5', colorType: ButtonColorType.normal),
    ButtonViewModel(value: '6', colorType: ButtonColorType.normal),
    ButtonViewModel(value: '-', text: '–', colorType: ButtonColorType.right),
    ButtonViewModel(value: '1', colorType: ButtonColorType.normal),
    ButtonViewModel(value: '2', colorType: ButtonColorType.normal),
    ButtonViewModel(value: '3', colorType: ButtonColorType.normal),
    ButtonViewModel(value: '+', colorType: ButtonColorType.right),
    ButtonViewModel(value: '.', colorType: ButtonColorType.normal),
    ButtonViewModel(value: '0', colorType: ButtonColorType.normal),
    ButtonViewModel(
      value: '<x',
      icon: 'assets/images/symbol_backspace.png',
      colorType: ButtonColorType.normal,
    ),
    ButtonViewModel(value: '=', colorType: ButtonColorType.right),
  ];
}
