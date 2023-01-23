enum ButtonColorType { normal, top, right }

class ButtonViewModel {
  final String value;
  final String? text;
  final String? icon;
  final ButtonColorType colorType;

  ButtonViewModel({
    required this.value,
    this.text,
    this.icon,
    required this.colorType,
  });
}
