import 'package:core/dashboard/constants/constants.dart';
import 'package:core/dashboard/constants/responsive.dart';
import 'package:core/dashboard/controllers/controller.dart';
import 'package:core/dashboard/screens/componenets/profile_info.dart';
import 'package:core/dashboard/screens/componenets/search_filed.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if(!Responsive.isDesktop(context))
          IconButton(onPressed: context.read<Controller>().controlMenu, icon: Icon(Icons.menu, color: textColor.withOpacity(0.5),)),
        Expanded(
            child: SearchField(),),
        ProfileInfo()
      ],
    );
  }
}
