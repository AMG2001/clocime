import 'package:clocime/config/dimensions.dart';
import 'package:flutter/material.dart';

class TimeIsText extends StatelessWidget {
  const TimeIsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectableText(
              " Time is",
              style: TextStyle(
                  fontSize: Dimensions.height * .1,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
