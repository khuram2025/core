import 'package:core/dashboard/controllers/controller.dart';
import 'package:core/dashboard/screens/dashboard.dart';
import 'package:core/getX/detail/view/detail.dart';
import 'package:core/getX/home/view/home.dart';
import 'package:core/mobile_shop/mobile_home.dart';
import 'package:core/responsive_email/ehome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'dashboard/constants/constants.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "Cahnnab",
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        primarySwatch: Colors.blue,
        fontFamily: "Gordita",
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          textTheme: const TextTheme(
      bodyText2: TextStyle(color: Colors.black54),
    ),
      ),

      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/home', page: ()=>GHomeScreen() ),
        GetPage(name: '/detail', page: ()=>GDetailScrenn()),
        GetPage(name: '/ehome', page: ()=>EHomeScreen()),
        GetPage(name: '/mhome', page: ()=>MobileHomeScreen()),
      ],
      initialRoute: '/mhome',
    );
  }
}

//test comment from office

//comment from home with after_update

//this is comment from office in after_update

//2nd home dd done office

//home2 done from office