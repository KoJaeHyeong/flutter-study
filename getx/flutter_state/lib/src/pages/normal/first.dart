import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_state/src/pages/normal/second.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('다음페이지 이동'),
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   // 기존 라우터 방식!(Navigator 사용)
                //   builder: (_) => FirstPage(),
                // ));
                Get.to(() => SecondPage()); // getx를 쓰면 이런식으로 편리하게 라우팅 가능, 그리고 상태들을 콘솔로 출력해준다.
              },
            ),
          ],
        ),
      ),
    );
  }
}
