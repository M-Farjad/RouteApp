// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

import '../screens/login/login_screen.dart';
import '../screens/main/main_screen.dart';

class AppRoutes {
  static List<GetPage> routes() => [
        GetPage(name: LoginScreen.routeName, page: () => const LoginScreen()),
        GetPage(name: MainScreen.routeName, page: () => const MainScreen()),
      ];
}
