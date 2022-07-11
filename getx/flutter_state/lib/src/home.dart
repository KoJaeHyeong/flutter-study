import 'package:flutter/material.dart';
import 'package:flutter_state/src/pages/simple_state_manage_page.dart';
import 'package:get/get.dart';
import 'package:flutter_state/src/pages/normal/first.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('상태관리 홈'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('일반적인 라우트'),
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   // 기존 라우터 방식!(Navigator 사용)
                //   builder: (_) => FirstPage(),
                // ));
                Get.to(() => FirstPage()); // getx를 쓰면 이런식으로 편리하게 라우팅 가능, 그리고 상태들을 콘솔로 출력해준다.
              },
            ),
            RaisedButton(
              child: Text('Named 라우트'),
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   // 기존 라우터 방식!(Navigator 사용)
                //   builder: (_) => FirstPage(),
                // ));
                // Get.to(() => FirstPage()); // getx를 쓰면 이런식으로 편리하게 라우팅 가능, 그리고 상태들을 콘솔로 출력해준다.
                Get.toNamed('/first');
              },
            ),
            RaisedButton(
              child: const Text('Argument 전달'),
              onPressed: () {
                Get.toNamed('/next',
                    arguments: User(
                      name: "재형이",
                      age: 29,
                    ));
              },
            ),
            RaisedButton(
              child: const Text('동적url'),
              onPressed: () {
                Get.toNamed('/user/12345?name=재형!&age=29');
              },
            ),
            RaisedButton(
              child: const Text('단순 상태 관리'),
              onPressed: () {
                Get.to(const SimpleStateManagePage());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class User {
  String name;
  int age;
  User({required this.name, required this.age});
}
