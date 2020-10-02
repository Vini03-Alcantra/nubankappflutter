import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {

  final bool showMenu;
  final VoidCallback ontap;
  const MyAppBar({Key key, this.showMenu, this.ontap}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    return Column(
      children: <Widget>[        
        GestureDetector(
          onTap: ontap,
          child: Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            color: Colors.purple[800],
            height: MediaQuery.of(context).size.height * 0.14,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.network(
                      'https://direitosbrasil.com/wp-content/uploads/2017/02/nubank-2006466_960_720.png', 
                      height: altura * 0.04,
                      color: Colors.white,
                    ),
                  SizedBox(width: largura * 0.02),
                  Text("Vinícius", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22))
                ],
              ),
              SizedBox(height: altura * 0.008),
              Icon(!showMenu ? Icons.expand_more : Icons.expand_less)
              ],            
            ),
          ),
        ),
      ],
    );
  }
}