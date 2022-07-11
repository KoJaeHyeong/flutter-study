import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_state/src/pages/normal/second.dart';

class FirstNamedPage extends StatelessWidget {
  const FirstNamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Named Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: const Text('다음페이지 이동'),
              onPressed: () {
                // Get.toNamed('/second');
                Get.offNamed('/second'); // 뒤로가기일때에는 자신의 페이지는 지운다.(home으로 간다.)
              },
            ),
          ],
        ),
      ),
    );
  }
}
