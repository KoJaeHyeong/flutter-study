import 'package:flutter/material.dart';
import 'package:flutter_dependency_injection/src/controller/count_controller_with_getx.dart';
import 'package:flutter_dependency_injection/src/controller/count_controller_with_provider.dart';
import 'package:flutter_dependency_injection/src/controller/count_controller_with_reactive.dart';
import 'package:flutter_dependency_injection/src/pages/state/with_getx.dart';
import 'package:flutter_dependency_injection/src/pages/state/with_provider.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:provider/provider.dart';

class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithReactive()); // getx 부분 인스턴스화, 어디서든 사용 가능(nestjs constructor 느낌)
    return Scaffold(
      appBar: AppBar(
        title: const Text("반응형 상태 관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('GetX', style: TextStyle(fontSize: 30)),
            Obx(
              () => Text("${Get.find<CountControllerWithReactive>().count.value}", // 반응형을 위한 get.find()
                  style: const TextStyle(fontSize: 28)),
            ),
            RaisedButton(
              child: const Text('+', style: TextStyle(fontSize: 30)),
              onPressed: () {
                Get.find<CountControllerWithReactive>().increase();
              },
            ),
            RaisedButton(
              // 장점은 다른것을 설정하지 않아도 값이 변하지 않으면 화면은 그대로이다! 효율이 올라감.
              child: const Text('11로 변경', style: TextStyle(fontSize: 30)),
              onPressed: () {
                Get.find<CountControllerWithReactive>().putNumber(11);
              },
            )
          ],
        ),
      ),
    );
  }
}
