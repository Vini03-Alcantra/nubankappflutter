import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final bool showMenu;
  final VoidCallback ontap;
  const MyAppBar({Key key, this.showMenu, this.ontap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: MediaQuery.of(context).padding.top),
        GestureDetector(
          onTap: ontap,
          child: Container(
            color: Colors.purple[800],
            height: MediaQuery.of(context).size.height * 0.20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.network(
                      'https://direitosbrasil.com/wp-content/uploads/2017/02/nubank-2006466_960_720.png', 
                      height: 35,
                      color: Colors.white,
                    ),
                  SizedBox(width: 10),
                  Text("Vinícius", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))
                ],
              ),
              Icon(!showMenu ? Icons.expand_more : Icons.expand_less)
              ],            
            ),
          ),
        ),
      ],
    );
  }
}