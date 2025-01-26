import 'package:flutter/material.dart';

//constant는 수정할 수 없고, compile 전에 그 value를 알 수 있는 변수
void main() {
  runApp(App());
}

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
          padding: EdgeInsets.symmetric(horizontal: 20),
          // column은 서로를 위 아래에 놓고 싶을 때 사용
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // 정렬 시 Column crossAxis는 가로 방향
            children: [
              //헤더이  margin - top 같은 개념
              const SizedBox(
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
              ),
              const SizedBox(
                height: 120,
              ),
              Text(
                'Total Balance',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              const Text(
                '\$5 194 482',
                style: TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(45),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          // 상하에 넣을 패딩값이 25
                          vertical: 15,
                          // 좌우가 horizontal
                          horizontal: 45,
                        ),
                        child: Text(
                          'Transfer',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      )),
                  Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF1F2123),
                        borderRadius: BorderRadius.circular(45),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          // 상하에 넣을 패딩값이 25
                          vertical: 15,
                          // 좌우가 horizontal
                          horizontal: 45,
                        ),
                        child: Text(
                          'Request',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
