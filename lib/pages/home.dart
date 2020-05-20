import 'package:flutter/material.dart';
import 'package:nubankappflutter/widgets/card_app.dart';
import 'package:nubankappflutter/widgets/my_app_bar.dart';
import 'package:nubankappflutter/widgets/my_dots_app.dart';
import 'package:nubankappflutter/widgets/page_view_app.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showMenu;
  int _currentIndex;
  double _yPosition;
  @override 
  void initState(){
    super.initState();
    _showMenu = false;
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    if (_yPosition == null) {
      _yPosition = _screenHeight * 0.24;
    }
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          MyAppBar(
            showMenu: _showMenu,
            ontap: (){
              setState(() {
                _showMenu = !_showMenu;
                _yPosition = _showMenu ? _screenHeight * 0.85 : _screenHeight * 0.24;
              });
            },
          ),
          PageViewApp(
            //top: !_showMenu ? _screenHeight * 0.24 : _screenHeight * 0.85,
            showMenu: _showMenu,
            top: _yPosition,
            onChanged: (index){
              setState(() {
                _currentIndex = index;
              });
            },
            onpanupdate: (details){
              double positionBottonLimit = _screenHeight * 0.85;
              double positionTopLimit = _screenHeight * 0.24;
              double midlePosition = positionBottonLimit - positionTopLimit;
              midlePosition = midlePosition / 2;
              setState(() {
                _yPosition += details.delta.dy;
                print("Botton ${positionBottonLimit.toString()}");
                print("Top ${positionTopLimit.toString()}");
                print("Position ${_yPosition.toString()}");
                _yPosition = _yPosition < positionTopLimit ? positionTopLimit : _yPosition;

                _yPosition = _yPosition > positionBottonLimit ? positionBottonLimit : _yPosition;
                
                print("midlePosition $midlePosition");
                if (_yPosition != positionBottonLimit && details.delta.dy > 0) {        
                  print("Passour por aqui");
                  _yPosition = _yPosition > positionTopLimit + midlePosition - 50
                  ? positionBottonLimit 
                  : _yPosition;
                }

                if (_yPosition != positionTopLimit && details.delta.dy < 0) {
                  _yPosition = _yPosition < positionBottonLimit - midlePosition
                  ? positionTopLimit 
                  : _yPosition;
                }

                if (_yPosition == positionBottonLimit) {
                  _showMenu = true;
                }else if(_yPosition == positionTopLimit){
                  _showMenu = false;
                }
              });              
            }
          ),
        MyDotsApp(
          top: _screenHeight * 0.78,
          currentIndex: _currentIndex
        )
        ],
      ),
    );
  }
}