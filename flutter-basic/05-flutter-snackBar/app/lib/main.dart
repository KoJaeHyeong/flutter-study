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
      title: 'Appbar',
      theme: ThemeData(primarySwatch: Colors.red),
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
          title: const Text('Snack Bar'),
          centerTitle: true,
        ),
        body: Builder(
          builder: (BuildContext ctx) {
            return Center(
              child: FlatButton(
                onPressed: () {
                  Scaffold.of(ctx).showSnackBar(const SnackBar(
                    //밑에서 올라오는 바
                    // 위에 위에 ctx에서 찾아온다.
                    content: Text('Hello'),
                  ));
                },
                color: Colors.red,
                child: const Text(
                  'Show me',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ), // 입체감 없는 평평한 버튼
            );
          },
        ));
  }
}
