import 'package:flutter/material.dart';
import 'package:xo/utilities/app_colors.dart';

import 'game_board_screen.dart';

class LoginScreen extends StatelessWidget {
  String player1="";
  String player2="";

  static String routeName = "login screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.10,
            ),
             Text(
              "Enter Player Name",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColors.accentColor),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                 Text(
                  "X",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: AppColors.accentColor),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                 Text(
                  "Player 1",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: AppColors.whiteColor),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                onChanged: (text){
                  player1=text;
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.whiteColor,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                 Text(
                  "O",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: AppColors.accentColor),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                 Text(
                  "Player 2",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: AppColors.whiteColor),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                onChanged: (text){
                  player2=text;
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.whiteColor,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(
                    context, GameBoardScreen.routeName,arguments: GameBoardScreenArguments(player1,player2));
              },
              style: OutlinedButton.styleFrom(
                  backgroundColor: AppColors.accentColor),
              child:  Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Start Game",
                    style: TextStyle(fontSize: 26, color: AppColors.whiteColor)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class GameBoardScreenArguments{
  String p1;
  String p2;
  GameBoardScreenArguments(this.p1,this.p2);
}
