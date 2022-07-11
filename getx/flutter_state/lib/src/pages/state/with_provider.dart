import 'package:flutter/material.dart';
import 'package:flutter_state/src/controller/count_controller_with_getx.dart';
import 'package:flutter_state/src/controller/count_controller_with_provider.dart';
import 'package:provider/provider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'provider',
            style: TextStyle(fontSize: 30),
          ),
          Consumer<CountControllerWithProvider>(
            // 해당부분만 rebuild되도록 설정 가능
            builder: (_, snapshot, child) {
              return Text("${snapshot.count}", style: TextStyle(fontSize: 50));
            },
          ),
          RaisedButton(
            child: const Text('+', style: TextStyle(fontSize: 30)),
            onPressed: () {
              Provider.of<CountControllerWithProvider>(context, listen: false)
                  .increase(); // listen을 false 해줘야 consumer에서 재빌드 되는 것을 막을 수 있음. => 일부분만 rebuild하기 위함.
            },
          )
        ],
      ),
    );
  }
}
