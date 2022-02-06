import 'package:get/get.dart';
import '../../../core/base/controller/base_controller.dart';

class DetailViewModel extends BaseController {
  late final Map<String, String> arguments;
  final int starCount = 3;

  final RxInt _orderAmount = 0.obs;
  int get orderAmount => _orderAmount.value;

  @override
  void onInit() {
    arguments = Get.arguments;
    super.onInit();
  }
}
