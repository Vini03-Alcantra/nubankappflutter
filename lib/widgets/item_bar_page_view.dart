import 'package:flutter/material.dart';

class ItemBarPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    return Expanded(
      flex: 1,
      child: Container(
        child: Padding(
          padding: EdgeInsets.only(left: largura * 0.05, right: largura * 0.05, top: altura * 0.001, bottom: altura * 0.001),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(  
                Icons.add_shopping_cart,
                color: Colors.black54,
                size: 30,
              ),
              SizedBox(width: 5),
              Flexible(
                child: Text("Compra mais recente no supermercado R\$34.56 quinta feira", 
                style: TextStyle(color: Colors.black87, fontSize: 15),
                )
              ),
              // Icon(
              //   Icons.chevron_right,
              //   color: Colors.grey[400],
              //   size: 18,
              // )
            ],
          ),
        ),
        color: Colors.grey[300],
      ),
    );
  }
}