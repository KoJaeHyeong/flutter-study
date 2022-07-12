import 'package:flutter/material.dart';
import 'package:flutter_dependency_injection/src/controller/dependency_controller.dart';
import 'package:get/get.dart';

class GetLazyPut extends StatelessWidget {
  const GetLazyPut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: RaisedButton(onPressed: () {
        Get.find<DependencyController>().increase();
      }),
    );
  }
}
