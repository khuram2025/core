import 'package:core/dashboard/constants/constants.dart';
import 'package:core/dashboard/screens/componenets/top_refrence.dart';
import 'package:core/dashboard/screens/componenets/users.dart';
import 'package:core/dashboard/screens/componenets/viewers.dart';
import 'package:flutter/material.dart';

import '../../constants/responsive.dart';
import 'analytic_cards.dart';
import 'custome_appbar.dart';
import 'discussions.dart';


class DashboardContent extends StatelessWidget {
  const DashboardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(appPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomeAppBar(),
              SizedBox(height: appPadding,),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 5,
                        child: Column(children: [
                          AnalyticCards(),
                          SizedBox(height: appPadding,),
                          Users(),
                          SizedBox(height: appPadding,),

                          if(Responsive.isMobile(context))
                            SizedBox(height: appPadding,),
                          if(Responsive.isMobile(context))
                          Discussions()
                        ])),
                    if(!Responsive.isMobile(context))
                    SizedBox(width: appPadding,),
                    if(!Responsive.isMobile(context))
                    Expanded(
                      flex: 2,
                      child: Discussions(

                      ),
                    )
                  ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                TopRefrence(),
                SizedBox(width: appPadding,),
                Expanded(flex:3,child: Viewers()),
              ],),

            ],
          ),
        ),
    );
  }
}
