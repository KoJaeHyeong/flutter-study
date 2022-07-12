import 'package:flutter/material.dart';
import 'package:flutter_dependency_injection/src/controller/dependency_controller.dart';
import 'package:flutter_dependency_injection/src/pages/dependencys/get_lazyput.dart';
import 'package:flutter_dependency_injection/src/pages/dependencys/get_put.dart';
import 'package:get/get.dart';

class DependencyManagePage extends StatelessWidget {
  const DependencyManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("의존성 주입"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: const Text('Getput'),
              onPressed: () {
                Get.to(
                  const GetPut(),
                  binding: BindingsBuilder(() {
                    Get.put(DependencyController()); // 이 페이지를 넘어갈때 바인딩을 해준다., 페이지를 들어갈때 메모리에 인스턴스화 해준다. 뒤로 돌아가면 메모리에서 삭제해준다.
                  }), // 의존성 주입의 정의를 넣는 곳!
                );
              },
            ),
            RaisedButton(
              child: const Text('Get.lazyPut'),
              onPressed: () {
                Get.to(
                  const GetLazyPut(),
                  binding: BindingsBuilder(() {
                    Get.lazyPut<DependencyController>(() => DependencyController()); // 이 페이지를 넘어갈때 바인딩을 해준다., 페이지를 들어갈때 메모리에 인스턴스화 해준다. 뒤로 돌아가면 메모리에서 삭제해준다.
                  }), // 컨트롤러에 접근할때 메모리에 올린다.
                );
              },
            ),
            RaisedButton(
              child: const Text('Get.putAsync'), // 동기처리
              onPressed: () {
                Get.to(
                  const GetPut(), // Get.put과 다른게 없지만, 페이지에 접근할때 동기처리가 필요할때!
                  binding: BindingsBuilder(() {
                    Get.putAsync<DependencyController>(() async {
                      // async 위치 중요!
                      await Future.delayed(const Duration(seconds: 5));
                      return DependencyController();
                    });
                  }),
                );
              },
            ),
            RaisedButton(
              child: const Text('Get.create'), // lazyput이랑 비슷하게 컨트롤러에 접근할때 인스턴스화가 일어나지만, 얘는 계속해서 만들어낼 수 있다.
              onPressed: () {
                Get.to(
                  const GetPut(),
                  binding: BindingsBuilder(() {
                    Get.create<DependencyController>(() => DependencyController());
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
