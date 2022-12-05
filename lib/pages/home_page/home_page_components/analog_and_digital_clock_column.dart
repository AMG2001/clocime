import 'package:clocime/config/dimensions.dart';
import 'package:clocime/utilities/digital_clock/digital_click_ui.dart';
import 'package:flutter/material.dart';
import 'package:analog_clock/analog_clock.dart';
import 'package:time_picker_sheet/widget/behaviour/snap_scroll.dart';
import 'package:time_picker_sheet/widget/composition/body.dart';
import 'package:time_picker_sheet/widget/composition/header.dart';
import 'package:time_picker_sheet/widget/composition/indicator.dart';
import 'package:time_picker_sheet/widget/composition/numbers.dart';
import 'package:time_picker_sheet/widget/composition/wheel.dart';
import 'package:time_picker_sheet/widget/provider/time_picker.dart';
import 'package:time_picker_sheet/widget/sheet.dart';
import 'package:time_picker_sheet/widget/time_picker.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';


class DigitalAndAnalogClockColumn extends StatelessWidget {
  const DigitalAndAnalogClockColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
              
                AnalogClock(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: Svg('assets/images/clock_body.svg')),
                      border: Border.all(width: 2.0, color: Colors.white),
                      color: Colors.transparent,
                      shape: BoxShape.circle),
                  width: Dimensions.width * .3,
                  isLive: true,
                  hourHandColor: Colors.red,
                  height: Dimensions.height * .5,
                  minuteHandColor: Colors.white,
                  secondHandColor: Colors.grey,
                  showSecondHand: true,
                  numberColor: Colors.white,
                  showNumbers: true,
                  showAllNumbers: true,
                  textScaleFactor: 1.4,
                  showTicks: true,
                  digitalClockColor: Colors.grey,
                  showDigitalClock: true,
                  datetime: DateTime.now(),
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            DigitalClock(),
            SizedBox(
              height: Dimensions.height * .1,
            )
          ],
        )
      ],
    );
  }
}
