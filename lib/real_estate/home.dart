import 'package:flutter/material.dart';

class RealHome extends StatefulWidget {
  const RealHome({Key? key}) : super(key: key);

  @override
  State<RealHome> createState() => _RealHomeState();
}

class _RealHomeState extends State<RealHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.kTitle,
          style: context.textTheme.subtt,
        ),
      ),
    );
  }
}
