import 'package:get/get.dart';

class CountController extends GetxController {
  int count = 0; // 관리할 상태 변수 선언

  void increment() {
    count++;
    print('aaa');
    update();
    // 상태가 업데이트 되었다는 것을 알림.
  }
}
