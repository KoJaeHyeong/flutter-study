import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScreenB'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Colors.blue,
              child: const Text('Go to ScreenB'),
              onPressed: () {},
            ),
            RaisedButton(
              color: Colors.blue,
              child: const Text(
                'Go to ScreenB',
                style: TextStyle(),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
