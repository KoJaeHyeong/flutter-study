import 'package:get/get.dart';

enum NUM { FIRST, SECOND }

class User {
  String? name;
  int? age;
  User({this.name, this.age});
}

class CountControllerWithReactive extends GetxController {
  // 이벤트 트리거 만들기 => extends GetxController
  RxInt count = 0.obs; //observer의 약자, 따로 반응형으로 관리 해준다. .obs
  RxDouble _double = 0.0.obs;
  RxString value = "".obs;
  Rx<NUM> nums = NUM.FIRST.obs; // enum 사용법
  Rx<User> user = User(name: "재형", age: 29).obs;
  RxList<String> list = [""].obs; // 안에 타입을 맞춰줘야 한다.
  void increase() {
    count++; // 반응형이기 때문에 update 할필요 없음
    // _double++;
    _double(424);

    nums(NUM.SECOND);
    user(User()); // 1가지 방법
    user.update((_user) {
      _user?.name = "플러터 공부하는 재형이"; // 업데이트 하는 유형
    });
    // list.addAll();
    // list.add();
    list.addIf(user.value.name == "플러터 공부하는 재형이", "okay");
  }

  void putNumber(int value) {
    count(value); // obs이기 때문에 이런식으로 해줌
  }

  // 이벤트 트리거 => GetxController안에는 이런 트리거들이 존재
  @override
  void onInit() {
    ever(count, (_) => print('매번 호출')); // count값이 변경 될때마다 호출, reactive 상태일때만 가능!
    once(count, (_) => print('한번만 호출'));
    debounce(count, (_) => print('마지막 변경에 한번만 호출'), time: Duration(seconds: 1)); // 이건 검색 쪽에서 많이 사용!, 잠깐의 텀에서 검색 기록을 가져와서 보여주거나 등등
    interval(count, (_) => print('변경되고 있는 동안 1초마다 호출'), time: Duration(seconds: 1));
    super.onInit();
  }
}
