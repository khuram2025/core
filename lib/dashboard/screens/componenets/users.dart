import 'package:core/dashboard/constants/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'bar_chart_user.dart';

class Users extends StatelessWidget {
  const Users({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
      width: double.infinity,
      padding: EdgeInsets.all(appPadding),
      decoration: BoxDecoration(
        color: secondaryColor, borderRadius: BorderRadius.circular(10)
      ),child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Users", style: TextStyle(color: textColor, fontWeight: FontWeight.w700, fontSize: 15 ),),
        Expanded(child: BarChartUsers())
      ],
    ),
    );
  }
}