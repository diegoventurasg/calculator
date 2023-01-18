import 'package:calculator/app/app_dependencies.dart';
import 'package:calculator/app/controllers/calculator_controller.dart';
import 'package:calculator/app/utils/buttons_util.dart';
import 'package:calculator/app/view/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class KeyboardWidget extends StatelessWidget {
  const KeyboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final buttons = ButtonsUtil.buttons;
    final controller = getIt<CalculatorController>();

    return SizedBox(
      height: 408,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: buttons.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          return ButtonWidget(
            data: buttons[index],
            onPressed: () => controller.onButtonPressed(buttons[index]),
          );
        },
      ),
    );
  }
}
