import 'package:core/dashboard/constants/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ViewLineChart extends StatefulWidget {
  const ViewLineChart({Key? key}) : super(key: key);

  @override
  State<ViewLineChart> createState() => _ViewLineChartState();
}

class _ViewLineChartState extends State<ViewLineChart> {
  List<Color> gradientColors = [
    primaryColor,
    secondaryColor
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: EdgeInsets.fromLTRB(appPadding, appPadding*1.5, appPadding, appPadding),
      child: LineChart(
        LineChartData(
          gridData: FlGridData(
            show: false,
          ),
          // titlesData: FlTitlesData(
          //   show: true,
          //   bottomTitles:
          // )
          borderData: FlBorderData(
            show: false,
          ),
          minX: 0,
          maxX: 20,
          minY: 0,
          maxY: 6,
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 3),
                FlSpot(4, 2),
                FlSpot(9, 4),
                FlSpot(12, 3),
                FlSpot(15, 5),
                FlSpot(20, 4),
              ],
              isCurved: true,
              colors: [primaryColor],
              barWidth: 5,
              isStrokeCapRound: true,
              dotData: FlDotData(
                show: false
              ),
              belowBarData: BarAreaData(
                show: true,
                colors: gradientColors.map((e) => e.withOpacity(0.8)).toList(),
                gradientFrom: Offset(0, 0),
                gradientTo: Offset(0, 0.8),
              )

            )
          ]
        )
      ),
    );
  }
}
