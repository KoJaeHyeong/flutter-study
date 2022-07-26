import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // debug 빨간띠 없애기
      title: 'BBANTO',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: const Text('BBANTO'),
        backgroundColor: Colors.amber[700],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/dora.png'),
                radius: 60.0, // circle 크기
              ),
            ),
            Divider(
              // 선으로 나눌때
              height: 60.0,
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30.0, // 끝에서 떨어 질수 위치 지정
            ),
            const Text(
              'NAME',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0, // 글자 간격
              ),
            ),
            const SizedBox(
              // 두 글자 사이를 사이즈 박스를 지정해서 높이 조절
              height: 10.0,
            ),
            const Text(
              'BBANTO',
              style: TextStyle(color: Colors.white, letterSpacing: 2.0, fontSize: 28.0, fontWeight: FontWeight.bold), // 폰트 굵기
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Text(
              'BBANTO POWER LEVEL',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0, // 글자 간격
              ),
            ),
            const SizedBox(
              // 두 글자 사이를 사이즈 박스를 지정해서 높이 조절
              height: 10.0,
            ),
            const Text(
              '14',
              style: TextStyle(color: Colors.white, letterSpacing: 2.0, fontSize: 28.0, fontWeight: FontWeight.bold), // 폰트 굵기
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              children: const <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'using lightsaber',
                  style: TextStyle(
                    fontSize: 16.0, //
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            Row(
              children: const <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'face hero tattoo',
                  style: TextStyle(
                    fontSize: 16.0, //
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            Row(
              children: const <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'fire flames',
                  style: TextStyle(
                    fontSize: 16.0, //
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: const AssetImage('assets/spiderman.png'),
                radius: 40.0,
                backgroundColor: Colors.amber[800],
              ),
            )
          ],
        ),
      ),
    );
  }
}
