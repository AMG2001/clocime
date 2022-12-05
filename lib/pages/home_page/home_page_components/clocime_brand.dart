import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ClocimeBrand extends StatelessWidget {
  const ClocimeBrand({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding: EdgeInsets.all(24),
              child: SvgPicture.asset("assets/images/Clocime_brand.svg",
                  height: 36),
            );
  }
}