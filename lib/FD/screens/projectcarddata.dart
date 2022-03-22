import 'package:flutter/material.dart';


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
        Text("Test")
      ],

    );
  }
}
