import 'package:calculator/app/view_model/button_view_model.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final ButtonViewModel data;
  final Function() onPressed;

  const ButtonWidget({
    Key? key,
    required this.data,
    required this.onPressed,
  }) : super(key: key);

  Color? getBackgroundColor(BuildContext context) {
    switch (data.colorType) {
      case ButtonColorType.top:
        return Theme.of(context).colorScheme.secondary;
      case ButtonColorType.right:
        return Theme.of(context).colorScheme.primary;
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: getBackgroundColor(context),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      ),
      onPressed: onPressed,
      child: data.icon != null
          ? ImageIcon(AssetImage(data.icon!), size: 32)
          : Text(
              data.text ?? data.value,
              style: data.colorType == ButtonColorType.right
                  ? const TextStyle(color: Colors.white)
                  : null,
            ),
    );
  }
}
