import 'package:flutter/material.dart';
import 'package:nubankappflutter/widgets/item_menu_bottom.dart';

class BottomMenu extends StatelessWidget {
  final bool showMenu;

  const BottomMenu({Key key, this.showMenu}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 200),
      bottom: !showMenu ? 0 + MediaQuery.of(context).padding.bottom : 0,
      left: 0,
      right: 0,
      height: MediaQuery.of(context).size.height * 0.14,
      child: IgnorePointer(
        ignoring: showMenu,
        child: AnimatedOpacity(
          duration: Duration(milliseconds: 200),
          opacity: !showMenu ? 1 : 0,
            child: Container(
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  ItemMenuBottom(Icons.person_add, "Indicar amigos"),                  
                  ItemMenuBottom(Icons.phone_android, "Recarga de celular"),
                  ItemMenuBottom(Icons.chat, "Cobrar"),
                  ItemMenuBottom(Icons.monetization_on, "Empréstimos"),
                  ItemMenuBottom(Icons.move_to_inbox, "Depositar"),
                  ItemMenuBottom(Icons.mobile_screen_share, "Transferir"),
                  ItemMenuBottom(Icons.format_align_center, "Ajustar Limite"),
                  ItemMenuBottom(Icons.chrome_reader_mode, "Pagar"),
                  ItemMenuBottom(Icons.lock_open, "Bloquear Cartão"),
                ],
              ),
            )
          
        ),
      ),
    );
  }
}