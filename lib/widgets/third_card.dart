import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ThirdCard extends StatefulWidget {
  @override
  _ThirdCardState createState() => _ThirdCardState();
}

class _ThirdCardState extends State<ThirdCard> {
  bool _buttonPressed = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(MaterialCommunityIcons.gift_outline, color: Colors.grey, semanticLabel: "eye"),
          Column(
            children: <Widget>[              
              Text(
                "Nubank Rewards",  
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(height: 15),
              Text( 
                "Acumule pontos que nunca expiram e troque por passagens aéreas ou serviços que você usa",
                style: TextStyle(color: Colors.grey[700], fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(  
              borderRadius: BorderRadius.circular(3),
              border: Border.all(width: 0.7, color: Colors.purple[800])
            ),
            child: RaisedButton(
              onHighlightChanged: (details){
                setState(() {
                  _buttonPressed = details;
                });
              },
              child: Text("ATIVE O SEU REWARDS", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
              highlightColor: Colors.purple[800],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3)
              ),
              color: Colors.transparent,
              elevation: 0,
              disabledElevation: 0,
              textColor: _buttonPressed ? Colors.white : Colors.purple[800],
              focusElevation: 0,
              highlightElevation: 0,
              hoverElevation: 0,
              onPressed: (){},

            ),
          )
        ],
      ),
    );
  }
}