import 'package:flutter/material.dart';

class MyDotsApp extends StatelessWidget {
  final int currentIndex;
  final double top;
  final bool showMenu;

  Color getColor(int index){
    return index == currentIndex ? Colors.white : Colors.white38;
  }
  const MyDotsApp({this.currentIndex, this.top, this.showMenu});
  @override
  Widget build(BuildContext context) {   
    var altura = MediaQuery.of(context).size.height;
    var largura = MediaQuery.of(context).size.width;
    return  Positioned(
      top: top,
      child: AnimatedOpacity(
              duration: Duration(milliseconds: 200),
              opacity: showMenu ? 0 : 1,
              child: Row(
          children: <Widget>[
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              height: altura * 0.009,
              width: largura * 0.03,
              decoration: BoxDecoration(
                color: getColor(0),
                shape: BoxShape.circle
              ),
            ),
            SizedBox(width: largura * 0.008),
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              height: altura * 0.009,
              width: largura * 0.03,
              decoration: BoxDecoration(
                color: getColor(1),
                shape: BoxShape.circle
              ),
            ),
            SizedBox(width: largura * 0.008),
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              height: altura * 0.009,
              width: largura * 0.03,
              decoration: BoxDecoration(
                color: getColor(2),
                shape: BoxShape.circle
              ),
            )
          ],
        ),
      ),
    );
  }
}