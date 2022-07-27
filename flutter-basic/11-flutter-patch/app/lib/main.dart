import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scaffold Messenger'),
      ),
      body: const HomeBody(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.thumb_up),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            // 기존 스낵바와 비슷한 구조지만 메서드가 달라짐!
            // ScaffoldMessenger는 가장 가까운 scaffold를 찾아서 반환!
            SnackBar(
              content: const Text('Like a new Snack bar!'),
              duration: const Duration(seconds: 5),
              action: SnackBarAction(
                // snackbar에 대한 액션
                label: 'Undo',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const ThirdPage()),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Go to the second page'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SecondPage()),
          );
        },
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: const Center(
        child: Text(
          '좋아요가 추가 되었습니다.',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.redAccent,
          ),
        ),
        // child: ElevatedButton(
        //   onPressed: () {
        //     Navigator.of(context).push(
        //       MaterialPageRoute(builder: (context) => ThirdPage()),
        //     );
        //   },
        //   child: const Text('Go to Third Page'),
        // ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Third Page'),
        ),
        body: Builder(
          builder: (context) {
            // 여기서 builder(context)를 지정함으로써 밑에있는 scaffolfMessenger.of는 딱 여기까지만 찾아서 반환하기 때문에, Snackbar를 다른페이지로 이동할때 안보이게 할 수 있다.
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '"좋아요"를 취소 하시겠습니까?',
                    style: TextStyle(fontSize: 20.0, color: Colors.redAccent),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('"좋아요"가 취소되었습니다'),
                          duration: Duration(seconds: 3),
                        ),
                      );
                    },
                    child: const Text('취소하기'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
