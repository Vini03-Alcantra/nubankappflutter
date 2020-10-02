import 'package:flutter/material.dart';

class ItemMenuBottom extends StatelessWidget {
  final String text;
  final IconData icon;

  ItemMenuBottom(this.icon, this.text);
  
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(altura * 0.01),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(icon, size: 22),
              Text(
                text,
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
        ),
        width:  largura * 0.25,
        height: altura * 0.08,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.deepPurple[400]
        ),
      ),                  
    );
  }
}