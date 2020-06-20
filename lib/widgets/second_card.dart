import 'package:flutter/material.dart';

class SecondCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,        
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(              
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          flex: 3,                          
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.credit_card,
                                          color: Colors.grey
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "Conta", 
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 13
                                          ),
                                        ), 
                                      ],
                                    ),
                                    Icon(
                                      Icons.remove_red_eye,
                                      color: Colors.grey
                                    )
                                    ],
                                  ),
                                ),                                    
                                Padding(
                                  padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Saldo Disponível", textAlign: TextAlign.start, 
                                        style: TextStyle(color: Colors.grey, fontSize: 13),
                                        ),
                                        Text.rich(
                                          TextSpan(
                                            text: "R\$ 2.600,00"
                                          ),
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 28,                                                    
                                          ),
                                        ),                                         
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        )
                      ],
                    )
                  ),                  
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(  
                      Icons.add_shopping_cart,
                      color: Colors.grey
                    ),
                    SizedBox(width: 5),
                    Flexible(
                      child: Text("Compra mais recente no supermercado R\$34.56 quinta feir", 
                      style: TextStyle(color: Colors.black, fontSize: 13),
                      )
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.grey[400],
                      size: 18,
                    )
                  ],
                ),
              ),
              color: Colors.grey[200],
            ),
          )
        ],
      ),
    );
  }
}