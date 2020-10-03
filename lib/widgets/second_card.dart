import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:nubankappflutter/widgets/item_bar_page_view.dart';

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
                                  padding: EdgeInsets.only(left: largura * 0.05, top: altura * 0.02, bottom: altura * 0.02, right: largura * 0.05),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.credit_card,
                                          color: Colors.black45,
                                          size: 30,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "Conta", 
                                          style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 20
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
                                        color: Colors.black45,
                                        size: 30,
                                      ) :
                                      Icon(                                        
                                        MaterialCommunityIcons.eye_off,
                                        color: Colors.black45,
                                        size: 30,
                                      )  
                                    )
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
                                        Text("Saldo Disponível", textAlign: TextAlign.start, 
                                        style: TextStyle(color: Colors.black54, fontSize: 18),
                                        ),
                                        _showSaldo ?
                                        Text.rich(
                                          TextSpan(
                                            text: "R\$ 2.600,00"
                                          ),
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 32,                                                    
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
          ItemBarPageView()
        ],
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}