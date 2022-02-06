import 'package:get/get.dart';
import '../../../view/detail/view_model/detail_view_model.dart';
import '../../../view/home/view_model/home_view_model.dart';

class BaseBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeViewModel>(() {
      return HomeViewModel();
    }, fenix: true);
    Get.lazyPut<DetailViewModel>(() {
      return DetailViewModel();
    }, fenix: true);
  }
}
