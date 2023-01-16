import 'package:calculator/app/utils/buttons_util.dart';
import 'package:calculator/app/view/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class KeyboardWidget extends StatefulWidget {
  const KeyboardWidget({super.key});

  @override
  State<KeyboardWidget> createState() => _KeyboardWidgetState();
}

class _KeyboardWidgetState extends State<KeyboardWidget> {
  final _buttons = ButtonsUtil.buttons;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 408,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: _buttons.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          return ButtonWidget(
            data: _buttons[index],
            onPressed: () => {},
          );
        },
      ),
    );
  }
}
