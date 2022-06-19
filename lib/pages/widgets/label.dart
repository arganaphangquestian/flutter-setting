import 'package:flutter/material.dart';

class LabelItem extends StatelessWidget {
  final String label;
  const LabelItem({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(label);
  }
}
