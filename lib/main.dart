import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

// widget은 앱의 ui를 만드는 레고 블럭 같음
// widget을 만드려면 플러터 SDK에 있는 3개의 코어 윋젯 중 하나를 상속받아야됨
class App extends StatelessWidget {
  @override //부모클래스 덮어쓰기
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
        body: Padding(
          // 전체 ui 상하좌우에 패딩값 줌
          // padding: EdgeInsets.all(10),

          //수평(가로)에 패딩 줌
          padding: EdgeInsets.symmetric(horizontal: 40),
          // column은 서로를 위 아래에 놓고 싶을 때 사용
          child: Column(
            // 정렬 시 Column crossAxis는 가로 방향
            children: [
              SizedBox(
                height: 50,
              ),
              //row는 서로 옆에 놓고 싶을 때 사용 -> div 개념
              Row(
                // 정렬 시 row의 crossAxis는 세로 방향
                // 수직 방향으로 end는 제일 오른쪽
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    // 수평에서 제 일 오른쪽
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Hey, Selena',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800),
                      ),
                      Text('Welcome back',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.8),
                            fontSize: 12,
                          )),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
