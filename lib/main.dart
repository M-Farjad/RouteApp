import 'package:dashboard_route_app/dbHelper/mongoDb.dart';
import 'package:dashboard_route_app/screens/users/users_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './bindings/initial_bindings.dart';
import './routes/routes.dart';
import 'configs/themes/app_dark_theme.dart';
import 'configs/themes/app_light_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Get x Controller initialization

  InitialBindings().dependencies();

  // await MongoDatabase.connect();

  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: LightTheme().buildLigtTheme(),
      darkTheme: DarkTheme().buildDarkTheme(),
      getPages: AppRoutes.routes(),
    );
  }
}
