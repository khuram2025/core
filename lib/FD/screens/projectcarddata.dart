import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../constans/app_constants.dart';


class ProjectCardData{
  final double percent;
  final ImageProvider projectImage;
  final String projectName;
  final DateTime releaseTime;

  ProjectCardData( {
      required this.percent,
      required this.projectImage,
      required this.projectName,
      required this.releaseTime
  });
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    required this.data,

    Key? key}) : super(key: key);

  final ProjectCardData data;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        PercentIndicator(
          center: ProfileImage(image: data.projectImage,),
          percent: data.percent,
        ),
        SizedBox(width: 10,),
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleText(data: data.projectName,),
            SizedBox(height: 5,),
            Row(
              children: [
                SubTitle(
                  "Release Time :  "
                ),
                ReleaseTimeText(data.releaseTime),
              ],
            )
          ],
        ))
      ],

    );
  }
}

class PercentIndicator extends StatelessWidget {
  const PercentIndicator({Key? key,
    required this.percent,
    required this.center}) : super(key: key);

  final double percent;
  final Widget center;
  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 55,
      lineWidth: 2.0,
      percent: percent,
      center: center,
      circularStrokeCap: CircularStrokeCap.round,
      backgroundColor: Colors.blueGrey,
      progressColor: Theme.of(Get.context!).primaryColor,

    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({Key? key,
    required this.image}) : super(key: key);

  final ImageProvider image;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundImage: image,
      backgroundColor: Colors.white,

    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText({Key? key, required this.data}) : super(key: key);

  final String data;
  @override
  Widget build(BuildContext context) {
    return Text(
      data.capitalize!,
      style: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: kFontColorPallets[0],
        letterSpacing: 0.8,
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class SubTitle extends StatelessWidget {
  const SubTitle(this.data, {Key? key,  }) : super(key: key);

  final String data;
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(fontSize: 11, color: kFontColorPallets[2]),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class ReleaseTimeText extends StatelessWidget {
  const ReleaseTimeText(this.date, {Key? key}) : super(key: key);

  final DateTime date;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kNotifColor,
        borderRadius: BorderRadius.circular(10)
      ),
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2.5),
      child: Text(
        DateFormat.yMMMd().format(date),
        style: TextStyle(fontSize: 9, color: Colors.white),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}






