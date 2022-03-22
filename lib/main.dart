import 'package:core/FD/config/routes/app_pages.dart';
import 'package:core/FD/config/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'FD/screens/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Project Managemnet",
      debugShowCheckedModeBanner: false,
      theme: AppTheme.basic,
      // initialRoute: AppPages.initial,
      // getPages: AppPages.routes,
      getPages: [
        GetPage(name: '/page-three', page: () => const FDHomePage()),
      ],
      home: FDHomePage(),
    );
  }
}

