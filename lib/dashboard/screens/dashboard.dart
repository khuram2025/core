import 'package:core/dashboard/constants/constants.dart';
import 'package:core/dashboard/constants/responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/controller.dart';
import 'componenets/dashboard_content.dart';
import 'componenets/drawer_menu.dart';




class DHomeScreen extends StatelessWidget {
  const DHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      drawer: DrawerMenu(),
      key: context.read<Controller>().scaffoldKey,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(Responsive.isDesktop(context))
              Expanded(child: DrawerMenu()),
            Expanded(
                flex:5,
                child: DashboardContent())
          ],
        ),

      ),
    );
  }
}
