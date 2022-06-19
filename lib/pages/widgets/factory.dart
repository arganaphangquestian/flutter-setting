import 'package:flutter/material.dart';
import 'package:setting/data/setting.dart';

import 'label.dart';
import 'text.dart';
import 'switch.dart';

class Factory extends StatelessWidget {
  final SettingItem item;
  const Factory({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (item.type) {
      case SettingItemType.labelType:
        return LabelItem(label: item.label);
      case SettingItemType.textType:
        return TextItem(
          label: item.label,
          icon: item.icon!,
          onAction: item.onAction,
        );
      case SettingItemType.switchType:
        return SwitchItem(
          label: item.label,
          icon: item.icon!,
          onChange: item.onChange!,
          value: item.isOn!,
        );
      default:
        throw Exception("Unknown type");
    }
  }
}
