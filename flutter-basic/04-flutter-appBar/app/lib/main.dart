import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appbar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,
        // leading: IconButton(
        //     // leading : 아이콘 버튼이나 간단한 위젯을 왼쪽에 배치할때
        //     onPressed: () {
        //       print('menu button is clicked');
        //     },
        //     icon: const Icon(Icons.menu)),
        actions: <Widget>[
          // actions : 복수의 아이콘 버튼 등을 오른쪽에 배치할 때
          IconButton(
              onPressed: () {
                print('Shopping cart button is clicked');
              },
              icon: const Icon(Icons.shopping_cart)),
          IconButton(
              onPressed: () {
                print('Search button is clicked');
              },
              icon: const Icon(Icons.search))
        ],
      ),
      // scaffold의 속성이니 appBar 밖에서 만든다.
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              // cmd를 타고 들어가보면 required되어지는 값들이 존재한다
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('assets/dora1.png'),
                backgroundColor: Colors.black,
              ),
              otherAccountsPictures: const <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/dora2.png'),
                  backgroundColor: Colors.white,
                ),
              ],
              accountName: const Text('Doramong'),
              accountEmail: const Text('kojae2423@fatoscorp.com'),
              onDetailsPressed: () {
                print('arrow is clicked');
              }, // 화살표를 눌렀을때 밑으로 펼쳐지는 기능
              decoration: BoxDecoration(
                // 하나의 Box로 보고 데코레이션을 지정해준다.
                color: Colors.red[200],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: const Text('Home'),
              onTap: () {
                print('Home is clicked');
              },
              trailing: const Icon(Icons.add), // 오른쪽에 정렬
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: const Text('Setting is clicked'),
              onTap: () {
                print('Setting');
              },
              trailing: const Icon(Icons.add), // 오른쪽에 정렬
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: const Text('Q&A'),
              onTap: () {
                print('Q&A is clicked');
              },
              trailing: const Icon(Icons.add), // 오른쪽에 정렬
            ),
          ],
        ),
      ),
    );
  }
}
