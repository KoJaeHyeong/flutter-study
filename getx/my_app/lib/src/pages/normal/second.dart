import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/src/home.dart';
import 'package:my_app/src/pages/normal/first.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: const Text('뒤로 이동'),
              onPressed: () {
                Get.back();
              },
            ),
            RaisedButton(
              child: const Text('홈 이동'),
              onPressed: () {
                Get.to(() => const Home()); // 히스토리가 남는다.
                Get.offAll(const Home()); // 히스토리를 삭제, ex) 회원가입 // 다시 돌아가면 안되는 상황에서!
              },
            ),
          ],
        ),
      ),
    );
  }
}
