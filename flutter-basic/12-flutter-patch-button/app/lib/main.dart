import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyButtons(),
    );
  }
}

class MyButtons extends StatelessWidget {
  const MyButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              onLongPress: () {
                print('text button');
              },
              style: TextButton.styleFrom(
                primary: Colors.redAccent,
                // backgroundColor: Colors.blue,
              ),
              child: const Text(
                'Text Button',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: null, // 비활성화 시키고 싶을때!
              style: ElevatedButton.styleFrom(
                // ElevatedButton에서는 primary가 배경색을 담당
                primary: Colors.orangeAccent,
                onSurface: Colors.pink, // 비활성화된 버튼의 색상 변경
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 0.0, // 음영효과
              ),
              child: const Text('Elevated Button'),
            ),
            OutlinedButton(
              onPressed: () {
                print('Outline button');
              },
              style: OutlinedButton.styleFrom(
                  primary: Colors.black, // 글자색
                  side: const BorderSide(
                    // 테두리 외곽선
                    color: Colors.red,
                  )),
              child: const Text('Outlined button'),
            ),
            TextButton.icon(
              // 버튼 앞에 아이콘을 넣고 싶을때(이런 형식으로 모든 버튼의 아이콘 추가 가능)
              onPressed: () {
                print('Icon Button');
              },
              icon: const Icon(
                Icons.home,
                size: 30.0,
                color: Colors.black38,
              ),
              label: const Text('Go to Home'),
              style: TextButton.styleFrom(
                primary: Colors.purple,
                minimumSize: const Size(200, 50), // 버튼의 크기
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              buttonPadding: const EdgeInsets.all(20),
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Text Button'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('ElevatedButton'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
