import 'package:clocime/config/colors.dart';
import 'package:clocime/config/dimensions.dart';
import 'package:clocime/config/theme/theme_controller.dart';
import 'package:clocime/pages/home_page/home_page_components/analog_and_digital_clock_column.dart';
import 'package:clocime/pages/home_page/home_page_components/clocime_brand.dart';
import 'package:clocime/pages/home_page/home_page_components/day_and_date.dart';
import 'package:clocime/pages/home_page/home_page_components/fab_button.dart';
import 'package:clocime/pages/home_page/home_page_components/time_is_text.dart';
import 'package:clocime/utilities/digital_clock/digital_clock_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final applicationThemeController =
      Get.put(ApplicationThemeController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    print("height is : ${Dimensions.height}");
    print("width is : ${Dimensions.width}");
    return Scaffold(
      floatingActionButton: FabButton(),
      body: Container(
        width: Dimensions.width,
        color: Colors.black,
        height: Dimensions.height,
        child: Stack(
          children: [
            ClocimeBrand(),
            Row(
              children: [
                TimeIsText(),
                Expanded(child: DigitalAndAnalogClockColumn()),
                DayAndDate()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
