import 'package:core/getX/services/api_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GDetailScrenn extends StatelessWidget {
  const GDetailScrenn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final apiService = Get.find<ApiService>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Screen"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Get.toNamed("/home");
            print(apiService.fetchTextFromAPi());
          },
        )
      )
    );
  }
}
