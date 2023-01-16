enum ButtonColor { normal, top, right }

class ButtonViewModel {
  final String value;
  final String? text;
  final String? icon;
  final ButtonColor buttonColor;

  ButtonViewModel({
    required this.value,
    this.text,
    this.icon,
    required this.buttonColor,
  });
}
