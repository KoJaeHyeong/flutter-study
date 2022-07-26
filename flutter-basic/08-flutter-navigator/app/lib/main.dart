import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First page',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  // 직관적으로 이거 하나하나가 Route이다.
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context2) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First page'),
      ),
      body: Center(
        child: RaisedButton(
          child: const Text('Go to the Second page'),
          onPressed: () {
            Navigator.push(
                context2,
                MaterialPageRoute(
                    // builder에서의 context는 안전장치!, 정확한 호출을 위함
                    builder: (context) => const SecondPage()) //
                );
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  //  materialApp으로 감싸져 있지 않기 때문에 혼자 동떨어져 있다! in Widget Tree
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second page'),
      ),
      body: Center(
        child: RaisedButton(
          child: const Text('Go to the First page'),
          onPressed: () {
            Navigator.pop(ctx);
          },
        ),
      ),
    );
  }
}
