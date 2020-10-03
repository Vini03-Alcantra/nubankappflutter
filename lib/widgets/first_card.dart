import 'package:flutter/material.dart';

class FirstCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var altura = MediaQuery.of(context).size.height;
    var largura = MediaQuery.of(context).size.width;
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
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(20),
                                        child: Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.credit_card,
                                              color: Colors.grey,
                                              size: 26,
                                            ),
                                            SizedBox(width: largura * 0.012),
                                            Text(
                                              "Cartão de Crédito", 
                                              style: TextStyle(
                                                color: Colors.black87,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16
                                              ),
                                            ), 
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: largura * 0.05, top: altura * 0.02, bottom: altura * 0.02),
                                        child: SizedBox(
                                          width: double.infinity,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text("fatura Atual", textAlign: TextAlign.start, 
                                              style: TextStyle(color: Colors.teal, fontSize: 16, fontWeight: FontWeight.bold),
                                              ),
                                              Text.rich(
                                                TextSpan(  
                                                  text: "R\$", 
                                                  children: [
                                                    TextSpan(text: "600", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36)),
                                                    TextSpan(text: ",50")
                                                  ]),
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color: Colors.teal,
                                                    fontSize: 36,                                                    
                                                  ),
                                              ), 
                                              Text.rich(
                                                TextSpan(
                                                  text: "Limite Disponível: ",
                                                  children: [
                                                    TextSpan(
                                                      text: "R\$2.399.50",
                                                      style: TextStyle(
                                                        color: Colors.green,
                                                        fontWeight: FontWeight.bold
                                                      )
                                                    ),
                                                  ]
                                                ),                                                
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                )
                              ],
                            ),
                          )
                        )
                      ],
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: altura * 0.02, bottom: altura * 0.02, left: largura * 0.02, right: largura * 0.03),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 3,
                              child: Container(
                                color: Colors.orange
                              ),                            
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.blue
                              ),                            
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                color: Colors.green
                              ),                            
                            )
                          ],
                        ),
                        width: largura * 0.02,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5)
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
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
          )
        ],
      ),
    );
  }
}