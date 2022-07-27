import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListViewPage(),
    );
  }
}

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  var titleList = [
    'Dentist',
    'Pharmacist',
    'School teacher',
    'IT manager',
    'Account',
    'Lawyer',
    'Hairdresser',
    'Physician',
    'Web developer',
    'Medical Secretary',
  ];
  var imageList = [
    'image/image1.jpeg',
    'image/image2.jpeg',
    'image/image3.jpeg',
    'image/image1.jpeg',
    'image/image2.jpeg',
    'image/image3.jpeg',
    'image/image1.jpeg',
    'image/image2.jpeg',
    'image/image3.jpeg',
    'image/image3.jpeg',
  ];

  var description = [
    '1. this is the example of flutter',
    '2. this is the example of flutter,it is awesome player',
    '3. this is the example of flutter',
    '4. this is the example of flutter',
    '5. this is the example of flutter',
    '6. this is the example of flutter',
    '7. this is the example of flutter',
    '8. this is the example of flutter',
    '9. this is the example of flutter',
    '10. this is the example of flutter',
  ];

  void showPopup(context, title, image, description) {
    showDialog(
      // flutter가 제공하는 기능
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              children: [
                ClipRRect(
                  // circleAvator랑 비슷함. 이것은 사각형임
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    image,
                    width: 200,
                    height: 200,
                  ), // parameter
                ),
                const SizedBox(
                  // 간격 설정
                  height: 10,
                ),
                Text(
                  title, // parameter
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    description, // Parameter
                    maxLines: 3, // 최대 줄간격 설정
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[500],
                    ),
                    textAlign: TextAlign.center, // text 줄 설정
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                    debugPrint('close');
                  },
                  icon: const Icon(Icons.close),
                  label: const Text('close'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    // 중요 : MediaQuery.of(context).size를 통해서 앱의 사이즈를 구할 수 있다.
    //뒤에 width는 가로를 지칭, * 0.6은 화면의 60퍼센트를 차지 한다는 뜻
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ListView',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: titleList.length, // 몇개의 리스트 아이템들이 보여질건지 지정하기 위해
        itemBuilder: (context, index) {
          return GestureDetector(
            // linkWell : 잉크처럼 퍼지면서 보임
            onTap: () {
              print(titleList[index]); // debugPrint를 사용해줘도 됨
              showPopup(
                context,
                titleList[index],
                imageList[index],
                description[index],
              );
            },
            child: Card(
              // Card위젯을 터치에 반응하게 만들기 위해서 GestureDetector를 사용
              child: Row(
                children: [
                  SizedBox(
                    // contatiner이랑 같음 but,Container가 기능이 더 많다.
                    // 그 기능을 많이 쓰지 않을거면 비용이 덜 드는 sizedBox를 쓰는 것을 추천!
                    width: 100,
                    height: 100,
                    child: Image.asset(imageList[index]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          titleList[index],
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          // 간격 조금 올리기 위해서
                          height: 10,
                        ),
                        SizedBox(
                          width: width, // 위에 설정한 MediaQuery
                          child: Text(
                            description[index],
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[500],
                            ),
                          ),
                        ) // 문장이 길기 때문,에 담을 공간을 확보!
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
