import 'package:get/get.dart';

class CountController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    print("onInit");
  }

  @override
  void onClose() {
    super.onClose();
    print("onClose");
  }

  final count = 0.obs;

  void increment() {
    count.value++;
    print('aaa');
    // 상태가 업데이트 되었다는 것을 알림.
  }
}

// obx : 리소스를 아끼기 위해서 새 값을 무시하고 재 빌드하지 않는다.
// obs : 상태를 관찰?한다고 생각을 하자.
 

// WORKER 사용 //

//ever(count, (_) => print("called every update"));
// once(count, (_) => print("called once"));
// debounce(count, (_) => print("called after 1 second after last change"), time: Duration(seconds: 1));
// interval(count, (_) => print("called every second during the value is changed."), time: Duration(seconds: 1));

// 컨트롤러의 onInit, StatefulWidget의 initState 안에서 정의 해야한다.