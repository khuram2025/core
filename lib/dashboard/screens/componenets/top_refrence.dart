import 'package:core/dashboard/constants/constants.dart';
import 'package:core/dashboard/data/data.dart';
import 'package:core/dashboard/models/referal_info_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopRefrence extends StatelessWidget {
  const TopRefrence({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(flex:2,
        child: Container(
          
          height: 500,
          width: 200, 
          padding: EdgeInsets.all(appPadding),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: secondaryColor,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Top Reference", style: TextStyle(color: textColor, fontSize: 15, fontWeight: FontWeight.w700),),
                  Text("View All", style: TextStyle(color: textColor.withOpacity(0.5), fontSize: 13, fontWeight: FontWeight.w700),)
                ],
              ),
              SizedBox(height: appPadding,),
              Expanded(child: ListView.builder(
                itemCount: referalData.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  itemBuilder: (context, index) => SocialInfo(info: referalData[index]))),
            ],
          ),
          ));
  }
}

class SocialInfo extends StatelessWidget {
  const SocialInfo({
    Key? key, required this.info,
  }) : super(key: key);

  final ReferalInfoModel info;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.all(appPadding/2),
          margin: EdgeInsets.only(top: appPadding),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: info.color!.withOpacity(0.1)

          ),
          child: SvgPicture.asset(info.svgSrc!, color: info.color, ),
        ),
        Expanded(child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: appPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("${info.title}", style: TextStyle(color: textColor, )),
              Text("234", style: TextStyle(color: textColor, fontWeight: FontWeight.bold),)
            ],
          ),
        ))


      ],
    );
  }
}
