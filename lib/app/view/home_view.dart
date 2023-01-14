import 'package:calculator/app/view/widgets/entries_widget.dart';
import 'package:calculator/app/view/widgets/keyboard_widget.dart';
import 'package:calculator/app/view/widgets/result_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              EntriesWidget(),
              SizedBox(height: 16),
              ResultWidget(),
              KeyboardWidget(),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
