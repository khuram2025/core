import 'package:core/dashboard/constants/constants.dart';
import 'package:core/dashboard/data/data.dart';
import 'package:flutter/material.dart';

import 'discussion_info_detail.dart';

class Discussions extends StatelessWidget {
  const Discussions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(appPadding),
      height: 540,
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Disccusion", style: TextStyle(color: textColor, fontWeight: FontWeight.w700, fontSize: 15),),
              Text("View", style: TextStyle(color: textColor.withOpacity(0.5), fontWeight: FontWeight.bold, fontSize: 13),)
            ],
        ),
          SizedBox(height: appPadding,),
          Expanded(
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: discussionData.length,
                itemBuilder: (context, index) => DescussionInfoDetail(info: discussionData[index],)
            ),
          )
        ],
      ),
    );
  }
}
