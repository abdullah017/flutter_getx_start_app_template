import 'package:flutter_getx_clean_architecture/presentation/bindings/home_binding.dart';
import 'package:get/get.dart';

import '../presentation/pages/home_page.dart';
import '../presentation/pages/splash_page.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.splash;

  static final routes = [
    GetPage(
      name: Routes.splash,
      page: () => const SplashPage(),
    ),
    GetPage(
      name: Routes.home,
      page: () => HomePage(),
      binding: HomeBinding(),
      //middlewares: [AuthMiddleware()],
    ),

    // Add more pages here
  ];
}
