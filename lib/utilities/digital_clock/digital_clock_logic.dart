import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DigitalClockController extends GetxController {
  late RxString hours;
  late RxString minutes;
  late RxString seconds;
  late RxString timeOfDay;
  static String day = DateFormat('EEEE').format(DateTime.now());
  static String dateOfDay = DateFormat.yMMMMd('en_US').format(DateTime.now());
}
