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

  Color get background {
    switch (data.type) {
      case ButtonColor.top:
        return const Color(0XFF4E505F);
      case ButtonColor.right:
        return const Color(0XFF4B5EFC);
      default:
        return const Color(0XFF2E2F38);
    }
  }

  Color get textColor {
    switch (data.type) {
      case ButtonColor.top:
        return Colors.white;
      case ButtonColor.right:
        return Colors.white;
      default:
        return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    var button = data.button;
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      onPressed: onPressed,
      child: button.image != null
          ? Image.asset(
              button.image!,
              color: textColor,
            )
          : Text(
              button.text,
              style: TextStyle(
                fontFamily: 'Work Sans',
                fontSize: 32,
                fontWeight: FontWeight.w400,
                color: textColor,
              ),
            ),
    );
  }
}