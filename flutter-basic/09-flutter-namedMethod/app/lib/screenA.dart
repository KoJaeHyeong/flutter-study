import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScreenA'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Colors.blue,
              child: const Text('Go to ScreenB'),
              onPressed: () {
                Navigator.pushNamed(context, '/b'); // context는 어차피 이름을 똑같이 했기때문에 놔두고 뒤에는 설정해 놓은 라우터 포인터 설정
              },
            ),
            RaisedButton(
              color: Colors.blue,
              child: const Text('Go to ScreenC'),
              onPressed: () {
                Navigator.pushNamed(context, '/c');
              },
            )
          ],
        ),
      ),
    );
  }
}
