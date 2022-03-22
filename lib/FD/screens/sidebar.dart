import 'package:core/FD/constans/app_constants.dart';
import 'package:core/FD/screens/projectcarddata.dart';
import 'package:flutter/material.dart';


class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProjectCard(
          data:
          ProjectCardData(
              projectImage: AssetImage(ImageRasterPath.logo1),
              projectName: "Testing",
              percent: 0.8,
              releaseTime: DateTime.now()),

        ),
      ],
    );
  }
}
