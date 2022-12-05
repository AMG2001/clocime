import 'package:clocime/pages/home_page/home_page.dart';
import 'package:clocime/pages/stop_watch_page/stop_watch_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApplicationPages {
  static List<GetPage> applicationPages = [
    GetPage(
        page: () => HomePage(), name: "/homePage", transition: Transition.fade),
    GetPage(
        page: () => StopWatchPage(),
        name: stopWatchPageName,
        transition: Transition.fade),
    GetPage(
        page: () => HomePage(), name: "/homePage", transition: Transition.fade),
  ];
  static String homePageName = "/homePage";
  static String stopWatchPageName = "/stopWatchPage";
  static String timerPageName = "/timerPage";
}
