import 'package:clocime/config/dimensions.dart';
import 'package:clocime/utilities/digital_clock/digital_clock_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DigitalClock extends StatelessWidget {
  const DigitalClock({super.key});

  Text getText(String s) {
    return Text(
      s,
      style: TextStyle(
          color: Colors.white, fontSize: 36, fontWeight: FontWeight.w500),
    );
  }

  Container getDigitalClockCell(String s) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(8)),
      child: getText(s),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            getDigitalClockCell("09"),
            SizedBox(
              width: 12,
            ),
            getText(":"),
            SizedBox(
              width: 12,
            ),
            getDigitalClockCell("18"),
            SizedBox(
              width: 12,
            ),
            getText(":"),
            SizedBox(
              width: 12,
            ),
            getDigitalClockCell("36"),
            SizedBox(
              width: 12,
            ),
            getText("PM")
          ],
        ),
      ),
    );
  }
}
