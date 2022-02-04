import 'package:get/get.dart';
import 'package:mars_demo_app/view/home/view_model/home_view_model.dart';

class BaseBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeViewModel>(() {
      return HomeViewModel();
    }, fenix: true);

   
  }
}
