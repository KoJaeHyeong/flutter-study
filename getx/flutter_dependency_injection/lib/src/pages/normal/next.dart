import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_dependency_injection/src/home.dart';
import 'package:flutter_dependency_injection/src/pages/normal/first.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Next Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${(Get.arguments as User).name} : ${(Get.arguments as User).age}"), // 전달받은 값을 출력하는 Text 만듬, 형변환(as)
            RaisedButton(
              child: const Text('뒤로 이동'),
              onPressed: () {
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
