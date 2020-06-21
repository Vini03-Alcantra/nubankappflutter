import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SecondCard extends StatefulWidget {
  @override
  _SecondCardState createState() => _SecondCardState();
}

class _SecondCardState extends State<SecondCard> with AutomaticKeepAliveClientMixin {
  
  bool _showSaldo = true;
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
                                    GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          _showSaldo = !_showSaldo;
                                        });                                        
                                      },
                                      child: _showSaldo ?
                                      Icon(                                        
                                        MaterialCommunityIcons.eye_outline,
                                        color: Colors.grey
                                      ) :
                                      Icon(                                        
                                        MaterialCommunityIcons.eye_off,
                                        color: Colors.grey
                                      )  
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
                                        _showSaldo ?
                                        Text.rich(
                                          TextSpan(
                                            text: "R\$ 2.600,00"
                                          ),
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 28,                                                    
                                          ),
                                        ) :
                                        Container(
                                          height: altura * 0.05,
                                          width: largura * 0.6,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[400]
                                          ),
                                        )
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

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}