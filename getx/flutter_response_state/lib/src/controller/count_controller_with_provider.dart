import 'package:flutter/material.dart';

class CountControllerWithProvider extends ChangeNotifier {
  // 상속 받이 상태 관리
  // 이벤트를 걸어줄 컨트롤러
  int count = 0; // 초기값 설정
  void increase() {
    count++;
    notifyListeners(); // 이것을 호출해면 업데이트가 된다??(반드시 해줘야 하는 부분)
  }
}
