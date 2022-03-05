import 'package:core/dashboard/controllers/controller.dart';
import 'package:core/dashboard/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Cahnnab",
        home: MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => Controller())
          ],
          child: DHomeScreen(),
        ),
      debugShowCheckedModeBanner: false,

    );
  }
}
