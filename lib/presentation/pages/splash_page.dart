import 'package:flutter/material.dart';
import 'package:flutter_getx_clean_architecture/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Navigate to Home after a delay
    Future.delayed(const Duration(seconds: 2), () {
      Get.offNamed(Routes.home);
    });

    return const Scaffold(
      body: Center(
        child: Text(
          'GetX MVVM Template',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
