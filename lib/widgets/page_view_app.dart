import 'package:flutter/material.dart';
import 'package:nubankappflutter/widgets/card_app.dart';
import 'package:nubankappflutter/widgets/first_card.dart';
import 'package:nubankappflutter/widgets/second_card.dart';
import 'package:nubankappflutter/widgets/third_card.dart';

class PageViewApp extends StatelessWidget {
  final double top;
  final ValueChanged<int> onChanged;
  final GestureDragUpdateCallback onpanupdate;
  final bool showMenu;
  const PageViewApp({Key key, this.top, this.onChanged, this.onpanupdate, this.showMenu}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 350),
      curve: Curves.easeOut,
      top: top,
      height: MediaQuery.of(context).size.height * 0.45,
      left: 0,
      right: 0,
      child: GestureDetector(
        onPanUpdate: onpanupdate,
        child: PageView(
          onPageChanged: onChanged,
          physics: showMenu ? NeverScrollableScrollPhysics() : BouncingScrollPhysics(),
          children: <Widget>[
            CardApp(child: FirstCard()),
            CardApp(child: SecondCard(),),
            CardApp(child: ThirdCard(),)
          ],
        ),
      )
    );
  }
}