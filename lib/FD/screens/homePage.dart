import 'package:core/FD/screens/sidebar.dart';
import 'package:flutter/material.dart';

class FDHomePage extends StatelessWidget {
  const FDHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(child: SideBar(), flex: 3,),
          Expanded(child: Container(color: Colors.green,), flex: 9,),
          Expanded(child: Container(color: Colors.blue,), flex: 4,),
        ],
      )
    );
  }
}
