import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';
import 'package:state_management/controller/count_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // getx로 상태관리를 할것이기 때문에 statefulWidget을 사용할 필요가 없다.
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CountController()); // DI처럼 만든 컨트롤러 등록

    return Scaffold(
      appBar: AppBar(
        title: Text('GETX'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed button',
            ), // 여기까지가 그냥 텍스트 부분
            GetBuilder<CountController>(builder: (controller) {
              // 여기서부터는 상태관리 할 상태가 변하는 값이 출력되는 부분(GetBuilder 사용해야함)
              return Text(
                '${controller.count}',
                style: Theme.of(context).textTheme.headline4,
              );
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        tooltip: 'increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
