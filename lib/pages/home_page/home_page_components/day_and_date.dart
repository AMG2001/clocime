import 'package:clocime/config/dimensions.dart';
import 'package:clocime/utilities/digital_clock/digital_clock_logic.dart';
import 'package:flutter/material.dart';

class DayAndDate extends StatelessWidget {
  const DayAndDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SelectableText(
            DigitalClockController.day,
            style: TextStyle(
                fontSize: Dimensions.height * .08,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.calendar_month_outlined,
                size: 24,
                color: Colors.white,
              ),
              SizedBox(
                width: 16,
              ),
              SelectableText(
                DigitalClockController.dateOfDay,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              )
            ],
            mainAxisSize: MainAxisSize.max,
          )
        ],
      ),
    );
  }
}
