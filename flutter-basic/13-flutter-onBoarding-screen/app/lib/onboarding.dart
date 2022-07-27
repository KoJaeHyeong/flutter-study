import 'package:app/main.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
// 외부 패키지를 사용해서 온보딩 페이지도 구현이 가능하다.

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'Crayons day',
          body: 'This is the first page',
          image: Image.asset('image/image1.jpeg'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Crayons day',
          body: 'This is the second page,  It is awesome, I hope you have a something to be fun',
          image: Image.asset('image/image2.jpeg'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Crayons day',
          body: 'This is the third page',
          image: Image.asset('image/image3.jpeg'),
          decoration: getPageDecoration(),
        ),
      ],
      done: const Text('done'),
      // screen페이지를 다 보았을때 마지막에 무엇을 할지 정해주는 버튼
      onDone: () {
        // 버튼을 눌렀을때 어떤 실행을 할지
        Navigator.of(context).pushReplacement(
          // pushReplacement로 바꾸면 뒤로 가기 버튼이 없어짐
          MaterialPageRoute(builder: (context) => const MyPage()),
        );
      },
      next: const Icon(Icons.arrow_forward),
      showSkipButton: true,
      skip: const Text('skip'),
      dotsDecorator: DotsDecorator(
        color: Colors.cyan,
        size: const Size(10, 10),
        activeSize: const Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        activeColor: Colors.red, // dot가 픽 되었을때 나타나는 색깔
      ),
      curve: Curves.bounceOut, // 페이지 이동시 애니메이터
    );
  }

// PageDecoration을 하나하나 불러와서 쓰면 코드가 길어진다. => 필요에 따라 메서드를 생성!
  PageDecoration getPageDecoration() {
    return const PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      bodyTextStyle: TextStyle(
        fontSize: 18,
        color: Colors.yellow,
      ),
      imagePadding: EdgeInsets.only(top: 40),
      pageColor: Colors.blueAccent,
    );
  }
}
