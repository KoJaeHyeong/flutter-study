import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  const ScreenC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScreenC'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Colors.blue,
              child: const Text('Go to ScreenC'),
              onPressed: () {},
            ),
            RaisedButton(
              color: Colors.blue,
              child: const Text('Go to ScreenC'),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
