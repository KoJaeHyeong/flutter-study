import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class CountControllerWithGetx extends GetxController {
  int count = 0;
  void increase(String id) {
    count++;
    update([id]); // getx는 그냥 update사용하면 됨., id를 부여 하여 분기처리
  }
} // 이벤트를 걸어줄 컨트롤러
