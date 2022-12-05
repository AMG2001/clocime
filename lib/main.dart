import 'package:clocime/config/dimensions.dart';
import 'package:clocime/config/theme/application_theme.dart';
import 'package:clocime/config/theme/theme_controller.dart';
import 'package:clocime/core/shared_preferences.dart';
import 'package:clocime/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Must add this line.
  await windowManager.ensureInitialized();

  await SharedPreferencesClass.initAllSharedPreferences();

  WindowOptions windowOptions = WindowOptions(
    size: Size(1536.0, 800.8),
    center: true,
    skipTaskbar: false,
    titleBarStyle: TitleBarStyle.normal,
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });
  runApp(Clocime());
}

class Clocime extends StatelessWidget {
  Clocime({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ApplicationThemeController>(
      init: ApplicationThemeController(),
      builder: (controller) {
        return GetMaterialApp(
          getPages: [],
          theme: controller.currentTheme,
          title: 'Clocime ⏰',
          home: HomePage(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
