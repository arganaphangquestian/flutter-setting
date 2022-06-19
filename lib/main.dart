import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:setting/pages/setting_screen.dart';

import 'utils/setup.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      routes: {
        SettingScreen.routeName: (ctx) => const SettingScreen(),
      },
      initialRoute: SettingScreen.routeName,
    );
  }
}
