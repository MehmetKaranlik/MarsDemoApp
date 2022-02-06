import 'package:get/get.dart';
import 'package:mars_demo_app/core/base/controller/base_controller.dart';

class HomeViewModel extends BaseController {
  final String avatarImageUrl = "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50";

  // Observable image path for hero image
  final RxString _argumentedImagePath = "".obs;
  String get arguementedImagePath => _argumentedImagePath.value;
  set arguementedImagePath(String str) => _argumentedImagePath.value = str;

  Map<String, String> get arguments => {"imagePath": arguementedImagePath};
}
