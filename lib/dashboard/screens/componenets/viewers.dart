import 'package:core/dashboard/constants/constants.dart';
import 'package:core/dashboard/screens/componenets/view_line_chart.dart';
import 'package:flutter/material.dart';


class Viewers extends StatelessWidget {
  const Viewers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: EdgeInsets.all(appPadding),
      decoration: BoxDecoration(color: secondaryColor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Viewers", style: TextStyle(color: textColor, fontWeight: FontWeight.bold),),
            Expanded(child: ViewLineChart())
          ],
      ),
    );
  }
}