import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:setting/main_controller.dart';

enum SettingItemType {
  labelType,
  switchType,
  textType,
}

class SettingItem {
  final Icon? icon;
  final String label;
  final SettingItemType type;
  final Function? onChange;
  final Function? onAction;
  final bool? isOn;

  SettingItem(
    this.label,
    this.type, {
    this.icon,
    this.onChange,
    this.onAction,
    this.isOn,
  });
}

final settings = [
  SettingItem("User", SettingItemType.labelType),
  SettingItem(
    "Change User",
    SettingItemType.textType,
    icon: const Icon(Icons.abc),
    onAction: () {
      print("Change User");
    },
  ),
  SettingItem(
    "Change Password",
    SettingItemType.textType,
    icon: const Icon(Icons.key),
    onAction: () {
      print("Change Password");
    },
  ),
  SettingItem("Apperance", SettingItemType.labelType),
  SettingItem(
    "Theme",
    SettingItemType.switchType,
    icon: const Icon(Icons.dark_mode),
    isOn: Get.find<MainController>().isDarkMode.value,
    onChange: (newVal) {
      Get.find<MainController>().switchTheme();
    },
  ),
  SettingItem(
    "Language",
    SettingItemType.switchType,
    icon: const Icon(Icons.language),
    isOn: false,
    onChange: (newVal) {
      print("Language ${newVal ? 'English' : 'Indonesia'}");
    },
  ),
  SettingItem("Others", SettingItemType.labelType),
  SettingItem(
    "About Us",
    SettingItemType.textType,
    icon: const Icon(Icons.interests),
  ),
];
