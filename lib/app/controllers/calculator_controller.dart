import 'package:calculator/app/stores/calculator_store.dart';
import 'package:calculator/app/view_model/button_view_model.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorController {
  final CalculatorStore store;

  CalculatorController(this.store);

  onButtonPressed(ButtonViewModel button) {
    String entries = store.entries.value;
    switch (button.value) {
      case 'C':
        //clear entries and result
        store.clear();
        break;
      case '<x':
        //delete the last entry
        if (entries.isNotEmpty) {
          String entriesUpdated = entries.substring(0, entries.length - 1);
          store.setData(entries: entriesUpdated);
        }
        break;
      case '+-':
        //change the number to negative or positive
        if (entries.isNotEmpty) {
          String lastEntry = entries.substring(entries.length - 1);
          if (lastEntry == '–') {
            String entriesUpdated = entries.substring(0, entries.length - 1);
            store.setData(entries: entriesUpdated);
          } else {
            store.setData(entries: '$entries–');
          }
        } else {
          store.setData(entries: '–');
        }

        break;
      case '=':
        _calcule();
        break;
      default:
        //add a entry
        String entriesUpdated = entries + (button.text ?? button.value);
        store.setData(entries: entriesUpdated);
        break;
    }
  }

  void _calcule() {
    String entries = store.entries.value;
    String result = '';
    try {
      Parser p = Parser();
      Expression exp = p.parse(_formatEntries(entries));
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      result = _formatResult(eval);
    } catch (e) {
      result = 'ERROR';
    }
    store.setData(result: result);
  }

  String _formatEntries(String value) {
    String formattedEntries =
        value.replaceAll('÷', '/').replaceAll('×', '*').replaceAll('–', '-');
    return formattedEntries;
  }

  String _formatResult(double value) {
    final isNotZero = (value - value.truncate()) != 0;
    return isNotZero ? '$value' : '${value.toInt()}';
  }
}
