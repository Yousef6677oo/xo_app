import 'package:flutter/material.dart';
import 'package:xo/screens/first_screen.dart';
import 'package:xo/screens/game_board_screen.dart';
import 'package:xo/screens/login_screen.dart';

void main() {
  runApp(MaterialApp(
    title:  "XO",
    debugShowCheckedModeBanner: false,
    routes: {
      FirstScreen.routeName:(_)=>FirstScreen(),
      LoginScreen.routeName:(_)=>LoginScreen(),
      GameBoardScreen.routeName:(_)=>GameBoardScreen(),
    },
    initialRoute: FirstScreen.routeName,
  ));
}
