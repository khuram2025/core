import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../responsive_email/constanats.dart';
import 'components/search_form.dart';

class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: SvgPicture.asset(('assets/icons/menu.svg')),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/Location.svg"),
            SizedBox(width: defaultPadding /2,),
            Text("15/2 Texas,", style: Theme.of(context).textTheme.bodyText1,),

          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/Notification.svg'),
          )
        ],
      ),
      body: Column(
        children: [
          Text("Explorer",
        style: Theme.of(context).textTheme.headline4!.
        copyWith(fontWeight:FontWeight.w500, color: Colors.black)),
          Text('best OutFites for you', style: TextStyle(fontSize: 18),),
          SearchForm(),
        ],
      ),
    );
  }
}
