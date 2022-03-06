import 'package:core/getX/detail/view/detail.dart';
import 'package:core/getX/services/api_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class GHomeScreen extends StatelessWidget {
  const GHomeScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    final apiService = Get.put(ApiService());

    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is the Home Screen"),
            ElevatedButton(onPressed: (){
              Get.toNamed("/detail");
              // print(apiService.fetchTextFromAPi());
            }, child: Text("Go to Detail")),

          ],
        ),

      )
    );
  }
}
