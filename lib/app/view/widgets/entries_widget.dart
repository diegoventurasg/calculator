import 'package:flutter/material.dart';

class EntriesWidget extends StatelessWidget {
  const EntriesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextFormField(
        textAlign: TextAlign.end,
        readOnly: true,
        showCursor: true,
        decoration: const InputDecoration(
          border: InputBorder.none,
          isDense: true,
          contentPadding: EdgeInsets.zero,
        ),
        style: const TextStyle(
          fontFamily: 'Work Sans',
          fontSize: 40,
          fontWeight: FontWeight.w300,
          color: Colors.grey,
        ),
      ),
    );
  }
}
