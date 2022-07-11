import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_response_state/src/home.dart';
import 'package:flutter_response_state/src/pages/named/first.dart';
import 'package:flutter_response_state/src/pages/named/second.dart';
import 'package:flutter_response_state/src/pages/normal/next.dart';
import 'package:flutter_response_state/src/pages/normal/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // Getx 사용 환경
      title: 'flutter-state',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: Home(),
      initialRoute: "/", // 라우트 설정 다른방법
      // routes: {
      //   // 기존 방식
      //   "/": (context) => Home(),
      //   '/first': (context) => FirstNamedPage(),
      //   '/secont': (context) => SecondNamedPage(),
      // },
      getPages: [
        // getx 방식
        GetPage(name: '/', page: () => const Home(), transition: Transition.topLevel), // transition : 애니메이션 처리
        GetPage(name: '/first', page: () => const FirstNamedPage(), transition: Transition.topLevel),
        GetPage(name: '/second', page: () => const SecondNamedPage(), transition: Transition.topLevel),
        GetPage(name: '/next', page: () => const NextPage(), transition: Transition.topLevel),
        GetPage(name: '/user/:uid', page: () => const UserPage(), transition: Transition.topLevel),
      ],
    );
  }
}
