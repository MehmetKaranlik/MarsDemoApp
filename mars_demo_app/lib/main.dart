import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mars_demo_app/view/home/view/home_view.dart';
import 'package:sizer/sizer.dart';
import 'core/base/binding/base_bindings.dart';
import 'core/init/cache/locale_manager.dart';
import 'core/init/routes/app_pages.dart';
import 'core/init/theme/app_theme_light.dart';
import 'core/init/translate/app_translations.dart';

void main() async {
  await asynInit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowMaterialGrid: false,
          debugShowCheckedModeBanner: false,
          defaultTransition: Transition.fadeIn,
          initialBinding: BaseBinding(),
          title: 'favrea',
          getPages: AppPages.pages,
          translationsKeys: AppTranslation.translations,
          locale: Get.deviceLocale,
          fallbackLocale: const Locale('tr', 'TR'),
          theme: AppThemeLight.instance.theme,
          smartManagement: SmartManagement.full,
          home: const HomeView(),
        );
      },
    );
  }
}

Future<void> asynInit() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocaleManager.prefrencesInit();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}
