import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mars_demo_app/view/detail/view/detail_view.dart';
import 'package:mars_demo_app/view/home/view/home_view.dart';
import '../../constants/routes/routes_constants.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.INITIAL, page: () => Container()),
    GetPage(name: Routes.HOME, page: () => const HomeView()),
    GetPage(name: Routes.DETAIL, page: () => const  DetailView()),

  ];
}
