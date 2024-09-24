import 'package:flutter/material.dart';
import 'package:flutter_getx_clean_architecture/routes/app_pages.dart';
import 'package:get/get.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    // Implement your authentication logic here
    bool isAuthenticated = false; // Replace with actual authentication check
    if (!isAuthenticated) {
      return const RouteSettings(name: Routes.splash);
    }
  }
}
