import 'package:clocime/config/colors.dart';
import 'package:clocime/config/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';

class FabButton extends StatelessWidget {
  const FabButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FabCircularMenu(
      animationDuration: Duration(seconds: 1),
      ringColor: AppColors.primaryColor,
      fabColor: Colors.white,
      ringWidth: Dimensions.width * .12,
      ringDiameter: Dimensions.width * .45,
      fabOpenColor: Colors.white,
      fabOpenIcon: Icon(
        Icons.add_alarm,
        color: Colors.black,
      ),
      fabCloseIcon: Icon(
        Icons.close,
        color: Colors.black,
      ),
      children: <Widget>[
        TextButton(
          onPressed: () {
            // TODO this button will open my Website .
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "About Developer",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 12,
              ),
              Icon(
                Icons.info_outline,
                color: Colors.white,
              )
            ],
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Setting",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 12,
              ),
              Icon(
                Icons.settings,
                color: Colors.white,
              )
            ],
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Stop watch",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 12,
              ),
              Icon(
                Icons.watch,
                color: Colors.white,
              )
            ],
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Add Timer",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 12,
              ),
              Icon(
                Icons.timer_outlined,
                color: Colors.white,
              ),
              SizedBox(
                width: 36,
              )
            ],
          ),
        ),
        TextButton(
          onPressed: () async {
            final x =
                showTimePicker(context: context, initialTime: TimeOfDay.now())
                    .then((value) => showDialog(
                          context: context,
                          builder: (context) {
                            return Container(
                              color: Colors.white,
                              width: 250,
                              height: 250,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Center(
                                    child: Container(
                                      width: 250,
                                      height: 250,
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      TextButton(
                                        onPressed: () {},
                                        child: Text("Add Alarm"),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                        ));

            /**
             * showTimePicker(
                context: context,
                builder: ((context) {
                  return TimePickerDialog(initialTime: TimeOfDay.now(),);
                }));
             */
          },
          child: Container(
            margin: EdgeInsets.only(left: 12, bottom: 12),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Add Alarm",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 6,
                ),
                Icon(
                  Icons.alarm,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 24,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
