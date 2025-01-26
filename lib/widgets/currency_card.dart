import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  // 블랙 컬러를 private하게 만들어줌
  final _blackColor = const Color(0xFF1F2123);
  final bool isOrder;
  final int order;

  const CurrencyCard(
      {super.key,
      required this.name,
      required this.code,
      required this.amount,
      required this.icon,
      required this.isInverted,
      required this.order,
      required this.isOrder});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: isOrder && order > 2 ? Offset(0, -40) : Offset(0, -20),
      child: Container(
        clipBehavior: Clip.hardEdge, //clipBehavior -> overflow 되었을때 처리
        decoration: BoxDecoration(
          color: isInverted ? Colors.white : _blackColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: isInverted ? _blackColor : Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: isInverted ? _blackColor : Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        code,
                        style: TextStyle(
                          color: isInverted
                              ? _blackColor
                              : Colors.white.withOpacity(0.8),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 2.2,
                // 아이콘 크기는 고정하여 카드 크기도 고정
                child: Transform.translate(
                  // translatr 위젯을 사용해서 아이콘 위치 조정 (x,y)
                  offset: Offset(-5, 12),
                  child: Icon(
                    icon,
                    color: isInverted ? _blackColor : Colors.white,
                    size: 88,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
