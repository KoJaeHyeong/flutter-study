import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/src/home.dart';
import 'package:my_app/src/pages/normal/first.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${Get.parameters['uid']}"), // 전달받은 값을 출력하는 Text 만듬, 형변환(as)
            Text("${Get.parameters['name']}님 안녕하세요!"),
            Text("${Get.parameters['age']}살을 먹었네요!"),
            RaisedButton(
              // 위젯은 코드 작성 위치에 따라 화면에 출력되는것이 달라진다.
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
