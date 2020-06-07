import 'package:flutter/material.dart';
import 'package:nubankappflutter/widgets/item_menu.dart';

class MenuApp extends StatelessWidget {
  final double top;
  final bool showMenu;
  const MenuApp({Key key, this.top, this.showMenu}) : super(key: key) ;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: AnimatedOpacity(
        opacity: showMenu ? 1 : 0,
        duration: Duration(milliseconds: 200),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.7,
          child: Column(
            children: <Widget>[
              Image.network("https://webmobtuts.com/wp-content/uploads/2019/02/QR_code_for_mobile_English_Wikipedia.svg_.png",
              height: 100,
              color: Colors.white
              ),
              Text.rich(
                TextSpan(
                  text: "Banco",
                  children: [
                    TextSpan(  
                      text: "250 - Nu Pagamentos S.A",
                      style: TextStyle(fontWeight: FontWeight.bold),                      
                    )
                  ]
                ),
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(height: 5),
              Text.rich(
                TextSpan(
                  text: "Agência",
                  children: [
                    TextSpan(  
                      text: "0001",
                      style: TextStyle(fontWeight: FontWeight.bold),                      
                    )
                  ]
                ),
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(height: 5),
              Text.rich(
                TextSpan(
                  text: "Conta",
                  children: [
                    TextSpan(  
                      text: "000000-0",
                      style: TextStyle(fontWeight: FontWeight.bold),                      
                    )
                  ]
                ),
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(height: 25),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: <Widget>[
                      ItemMenu(Icons.info_outline, "Me ajuda"),
                      ItemMenu(Icons.person_outline, "Perfil"),
                      ItemMenu(Icons.settings, "Configurar Conta"),
                      ItemMenu(Icons.credit_card, "Configurar Cartão"),
                      ItemMenu(Icons.store_mall_directory, "Pedir conta PJ"),
                      ItemMenu(Icons.phone_android, "Configurações no APP"),
                      SizedBox(height: 25),
                      Container(
                        height: 35,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.7,
                            color: Colors.white
                          )
                        ),
                        child: RaisedButton(
                          color: Colors.purple[800],
                          highlightColor: Colors.transparent,
                          elevation: 0,
                          disabledElevation: 0,
                          focusElevation: 0,
                          highlightElevation: 0,
                          hoverElevation: 0,
                          splashColor: Colors.purple[900],
                          child: Text("Sair do APP",
                          style: TextStyle(fontSize: 12),
                          ),
                          onPressed: (){},

                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}