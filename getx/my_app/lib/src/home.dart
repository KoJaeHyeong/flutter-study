import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/src/pages/normal/first.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('라우트 관리 홈'),
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
          ],
        ),
      ),
    );
  }
}
