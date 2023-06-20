import 'package:flutter/material.dart';

import 'game_board_screen.dart';

class LoginScreen extends StatelessWidget {
  String player1="";
  String player2="";

  static String routeName = "login screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 83, 21, 210),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.10,
            ),
            const Text(
              "Enter Player Name",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 229, 197, 33)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                const Text(
                  "X",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 229, 197, 33)),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                const Text(
                  "Player 1",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
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
                  fillColor: Colors.white,
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
                const Text(
                  "O",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 229, 197, 33)),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                const Text(
                  "Player 2",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
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
                  fillColor: Colors.white,
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
                  backgroundColor: const Color.fromARGB(255, 229, 197, 33)),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Start Game",
                    style: TextStyle(fontSize: 26, color: Colors.white)),
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
