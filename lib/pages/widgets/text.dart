import 'package:flutter/material.dart';

class TextItem extends StatelessWidget {
  final String label;
  final Icon icon;
  final Function? onAction;

  const TextItem({
    Key? key,
    required this.label,
    required this.icon,
    this.onAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onAction != null) {
          onAction!();
        }
      },
      child: Row(
        children: [
          icon,
          const SizedBox(width: 16),
          Expanded(child: Text(label)),
          onAction != null ? const Icon(Icons.chevron_right) : const SizedBox(),
        ],
      ),
    );
  }
}
