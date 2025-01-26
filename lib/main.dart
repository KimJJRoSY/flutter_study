import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

// widget은 앱의 ui를 만드는 레고 블럭 같음
// widget을 만드려면 플러터 SDK에 있는 3개의 코어 윋젯 중 하나를 상속받아야됨
class App extends StatelessWidget {
  @override //부모클래스 덮어쓰기
  // 어떤 family 스타일을 사용할지 flutter에게 전달 == 기본 UI 설정
  Widget build(BuildContext context) {
    return MaterialApp(
      // 사람들이 우리 앱의 home에 갔을 때 뭘 보여줘야 할까?
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Flutter!'),
        ),
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
    // Material == 구글, Cupertino == ios
    // 모바일 앱의 모든 화면은 scaffold가 필요
    // scaffold는 navigation bar, bottom tab bar, 상단 버튼, 화면 중앙 정렬 등 구현 OK
  }
}
