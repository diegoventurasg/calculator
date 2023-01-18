import 'package:calculator/app/app_dependencies.dart';
import 'package:calculator/app/stores/calculator_store.dart';
import 'package:flutter/material.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = getIt<CalculatorStore>();

    return SizedBox(
      height: 96,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerRight,
        child: ValueListenableBuilder(
            valueListenable: store.result,
            builder: (context, value, _) {
              return Text(
                ' $value',
                textAlign: TextAlign.end,
                style: const TextStyle(
                  fontFamily: 'Work Sans',
                  fontSize: 96,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              );
            }),
      ),
    );
  }
}
