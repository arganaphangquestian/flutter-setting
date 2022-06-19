import 'package:flutter/material.dart';

class SwitchItem extends StatefulWidget {
  final String label;
  final Icon icon;
  final bool value;
  final Function onChange;

  const SwitchItem({
    Key? key,
    required this.label,
    required this.icon,
    required this.onChange,
    required this.value,
  }) : super(key: key);

  @override
  State<SwitchItem> createState() => _SwitchItemState();
}

class _SwitchItemState extends State<SwitchItem> {
  bool _value = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      _value = widget.value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onChange(!_value);
        setState(() {
          _value = !_value;
        });
      },
      child: Row(
        children: [
          widget.icon,
          const SizedBox(width: 16),
          Expanded(child: Text(widget.label)),
          Switch(
              value: _value,
              onChanged: (newVal) {
                widget.onChange(newVal);
                setState(() {
                  _value = newVal;
                });
              }),
        ],
      ),
    );
  }
}
