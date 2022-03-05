import 'package:core/dashboard/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({Key? key,
    required this.title,
    required this.svgSrc,
    required this.tap}) : super(key: key);

  final String title, svgSrc;
  final VoidCallback tap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: tap,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(svgSrc, color: grey, height: 16,),
      title: Text(title, style: TextStyle(color: grey),),
    );
  }
}
