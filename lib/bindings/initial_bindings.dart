// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

import '../controllers/custom_menu_controller.dart';
import '../controllers/theme_controller.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ThemeController());
    Get.put(CustomMenuController());
  }
}
