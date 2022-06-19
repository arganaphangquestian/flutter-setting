import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  var isDarkMode = false.obs;
  var language = "en".obs;

  MainController() {
    _loadSettings();
  }

  void _loadSettings() async {
    //
  }

  void switchTheme() {
    isDarkMode.value = !isDarkMode.value;
    update();
    // Save to storage
    Get.changeTheme(isDarkMode.value ? ThemeData.dark() : ThemeData.light());
  }
}
