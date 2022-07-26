import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Character card', // 앱에 총칭
      home: MyCard(),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 빈 도화지 같은 역할
      appBar: AppBar(
        title: const Text('BBANTO'), // 앱바에 출력되는 이름
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0.0, // 앱바가 음영있으면서, 떠있을때! elavation은 높이라는 뜻
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // 위젯에서 위치 지정할때 중요!
          children: const <Widget>[
            Text('Hello'),
            Text('Hello'),
            Text('Hello'),
          ],
        ),
      ),
    );
  }
}
