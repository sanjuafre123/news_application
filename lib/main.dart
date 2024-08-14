import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_application/view/home_screen.dart';
import 'package:news_application/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/',
          page: () => const SplashScreen(),
          transition: Transition.leftToRight,
        ),
        GetPage(
          name: '/home',
          page: () => const HomeScreen(),
        ),
      ],
    );
  }
}
