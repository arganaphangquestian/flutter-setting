import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:setting/main_controller.dart';

Future<void> setup() async {
  await GetStorage.init();
  Get.put(MainController());
}
