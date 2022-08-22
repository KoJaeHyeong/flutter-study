import 'package:action_state_management/controller/count_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';

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
    Get.put(CountController()); // DI처럼 만든 컨트롤러 등록

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
            Obx(
              // 반응형에서는 Obx로 관리 한다.
              () => Text(
                // '${Get.find<CountController>().count.value}',
                '${CountController.to.count.value}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: Get.find<CountController>().increment,
        onPressed: CountController.to.increment,
        tooltip: 'increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

// Get.find를 사용 하면 Get.put으로 등록한 컨트롤러를 어디에서든 접근하여 사용 할 수 있다. => 자식 위젯에서도 사용 가능!
// 먼저, Get.put을 사용하여 컨트롤러를 등록 후 사용 해야한다.