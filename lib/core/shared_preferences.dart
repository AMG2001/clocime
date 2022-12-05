import 'package:clocime/config/theme/theme_controller.dart';
import 'package:get/get.dart';

class SharedPreferencesClass {
  static final themeController =
      Get.put(ApplicationThemeController(), permanent: true);
  static Future<void> initAllSharedPreferences() async {
    themeController.init();
  }
}
