import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constanats.dart';


class ESideMenu extends StatelessWidget {
  const ESideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(kDefaultPadding),
        color: kBgLightColor,
        child: Column(
          children: [
            Image.asset("assets/images/Logo Outlook.png", width: 46,),
            SizedBox(height: kDefaultPadding,),
            ElevatedButton.icon(

                onPressed: (){},
                icon: SvgPicture.asset('assets/icons/Edit.svg'),
                label: Text("New Message", style: TextStyle(color: Colors.white),)),
            SizedBox(height: kDefaultPadding,),


          ],
        )
    );
  }
}
