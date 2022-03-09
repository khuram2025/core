import 'package:flutter/material.dart';

import 'esm/e_side_menu.dart';



class EHomeScreen extends StatelessWidget {
  const EHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(child: ESideMenu()),
          Expanded(child: Container(color: Colors.green, height: 200,)),
          Expanded(child: Container(color: Colors.orange, height: 200,))
        ],
      ),
    );
  }
}
