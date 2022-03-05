import 'package:core/dashboard/constants/constants.dart';
import 'package:core/dashboard/models/analytic_info_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AnalyticInfoCards extends StatelessWidget {
  const AnalyticInfoCards({Key? key,
    required this.info}) : super(key: key);

  final AnalyticInfo info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: appPadding, vertical: appPadding/2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: secondaryColor,

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("${info.count}", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18, color: textColor),),
              Container(
                padding: EdgeInsets.all(appPadding/2),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: info.color!.withOpacity(0.1),
                  shape: BoxShape.circle,
                  
                ),
                child: SvgPicture.asset(info.svgSrc!, color: info.color,),
              )
            ],
          ),
          Text(info.title!,
            maxLines:1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
            color: textColor, fontSize: 15,
            fontWeight: FontWeight.w600
          ),)
        ],
      ),
    );
  }
}
