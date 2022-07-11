import 'package:flutter/material.dart';
import 'package:flutter_response_state/src/controller/count_controller_with_getx.dart';
import 'package:flutter_response_state/src/controller/count_controller_with_provider.dart';
import 'package:flutter_response_state/src/pages/state/with_getx.dart';
import 'package:flutter_response_state/src/pages/state/with_provider.dart';
import 'package:get/instance_manager.dart';
import 'package:provider/provider.dart';

class SimpleStateManagePage extends StatelessWidget {
  const SimpleStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithGetx()); // getx 부분 인스턴스화, 어디서든 사용 가능(nestjs constructor 느낌)
    return Scaffold(
      appBar: AppBar(
        title: const Text("단순 상태 관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              // 페이지 2개로 나누기
              child: WithGetx(),
            ),
            Expanded(
              child: ChangeNotifierProvider<CountControllerWithProvider>(
                create: (_) => CountControllerWithProvider(),
                child: const WithProvider(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
