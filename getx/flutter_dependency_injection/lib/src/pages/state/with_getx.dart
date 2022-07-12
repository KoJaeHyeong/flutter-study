import 'package:flutter/material.dart';
import 'package:flutter_dependency_injection/src/controller/count_controller_with_getx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class WithGetx extends StatelessWidget {
  const WithGetx({Key? key}) : super(key: key);
  Widget _button(String id) {
    // getx는 context가 없기 때문에 따로 이렇게 빼서 사용이 가능하다.
    return RaisedButton(
      child: const Text('+', style: TextStyle(fontSize: 30)),
      onPressed: () {
        Get.find<CountControllerWithGetx>().increase(id); // getx는 간단하게 find로 불러 올수 있음.
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'GetX',
            style: TextStyle(fontSize: 30),
          ),
          GetBuilder<CountControllerWithGetx>(
              id: "first", // id를 넣어서 분기 처리 해줄수 있다.
              builder: (controller) {
                // 타입을 지정해줄수 있다.
                return Text("${controller.count}", // 위 builder에서 설정한 컨트롤러를 불러와서 사용 가능
                    style: const TextStyle(fontSize: 28));
              }), // provider consumer와 같은 기능
          GetBuilder<CountControllerWithGetx>(
            id: "second",
            builder: (controller) {
              // 타입을 지정해줄수 있다.
              return Text("${controller.count}", // 위 builder에서 설정한 컨트롤러를 불러와서 사용 가능
                  style: const TextStyle(fontSize: 28));
            },
          ),
          _button("first"),
          _button("second"),
        ],
      ),
    );
  }
}
