import 'package:calculator/app/utils/buttons_util.dart';
import 'package:calculator/app/view_model/button_view_model.dart';
import 'package:collection/collection.dart';

class ButtonsViewModel {
  final _buttons = ButtonsUtil.buttons;

  List<ButtonViewModel> get buttons => _buttons
      .mapIndexed(
        (i, e) => ButtonViewModel(
          button: e,
          type: _getButtonColor(i),
        ),
      )
      .toList();

  ButtonColor _getButtonColor(int index) {
    if (index < 3) {
      return ButtonColor.right;
    } else if ((index + 1) % 4 == 0) {
      return ButtonColor.top;
    } else {
      return ButtonColor.normal;
    }
  }
}
