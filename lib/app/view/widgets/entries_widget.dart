import 'package:calculator/app/app_dependencies.dart';
import 'package:calculator/app/stores/calculator_store.dart';
import 'package:flutter/material.dart';

class EntriesWidget extends StatelessWidget {
  const EntriesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = getIt<CalculatorStore>();

    return SizedBox(
      height: 40,
      child: ValueListenableBuilder(
          valueListenable: store.entries,
          builder: (context, value, _) {
            return Text(
              value,
              textAlign: TextAlign.right,
              style: Theme.of(context).textTheme.displaySmall,
            );
          }),
    );
  }
}
