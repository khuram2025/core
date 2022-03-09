import 'package:core/dashboard/controllers/controller.dart';
import 'package:core/dashboard/screens/dashboard.dart';
import 'package:core/getX/detail/view/detail.dart';
import 'package:core/getX/home/view/home.dart';
import 'package:core/responsive_email/ehome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "Cahnnab",
        // home: MultiProvider(
        //   providers: [
        //     ChangeNotifierProvider(create: (context) => Controller())
        //   ],
        //   child: DHomeScreen(),
        // ),
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/home', page: ()=>GHomeScreen() ),
        GetPage(name: '/detail', page: ()=>GDetailScrenn()),
        GetPage(name: '/ehome', page: ()=>EHomeScreen()),
      ],
      initialRoute: '/ehome',
    );
  }
}

//test comment from office

//comment from home with after_update

//this is comment from office in after_update