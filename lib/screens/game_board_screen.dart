import 'package:flutter/material.dart';
import 'package:xo/utilities/app_colors.dart';

import '../components/xo_button.dart';
import 'login_screen.dart';

class GameBoardScreen extends StatefulWidget {
  static String routeName = "Game Board Screen";
  @override
  State<GameBoardScreen> createState() => _GameBoardScreenState();
}

class _GameBoardScreenState extends State<GameBoardScreen> {
  List<String> xoList = ["", "", "", "", "", "", "", "", ""];
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    GameBoardScreenArguments args =
        ModalRoute.of(context)!.settings.arguments as GameBoardScreenArguments;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 83, 21, 210),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: MediaQuery.of(context).size.height * 0.15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primaryColor,
                  ),
                  child: Column(
                    children: [
                      Text(
                        args.p1,
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: AppColors.accentColor),
                      ),
                      Text("X",
                          style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                              color: AppColors.accentColor)),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: MediaQuery.of(context).size.height * 0.15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primaryColor,
                  ),
                  child: Column(
                    children: [
                      Text(
                        args.p2,
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: AppColors.whiteColor),
                      ),
                      const Text("o",
                          style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XOButton(index: 0, digitName: xoList[0], onClick: OnClick),
                XOButton(index: 1, digitName: xoList[1], onClick: OnClick),
                XOButton(index: 2, digitName: xoList[2], onClick: OnClick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XOButton(index: 3, digitName: xoList[3], onClick: OnClick),
                XOButton(index: 4, digitName: xoList[4], onClick: OnClick),
                XOButton(index: 5, digitName: xoList[5], onClick: OnClick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XOButton(index: 6, digitName: xoList[6], onClick: OnClick),
                XOButton(index: 7, digitName: xoList[7], onClick: OnClick),
                XOButton(index: 8, digitName: xoList[8], onClick: OnClick),
              ],
            ),
          ),
        ],
      ),
    );
  }

  OnClick(int index) {
    if (counter == 8) {
      setState(() {
        xoList = ["", "", "", "", "", "", "", "", ""];
        counter = 0;
      });
      return;
    }
    if (counter % 2 == 0 && xoList[index] == "") {
      xoList[index] = "X";
      counter++;
      if (checkWinner("X")) {
        xoList = ["", "", "", "", "", "", "", "", ""];
        counter = 0;
      }
    } else if (counter % 2 != 0 && xoList[index] == "") {
      xoList[index] = "O";
      counter++;
      if (checkWinner("O")) {
        xoList = ["", "", "", "", "", "", "", "", ""];
        counter = 0;
      }
    }
    setState(() {});
  }

  bool checkWinner(String digit) {
    if (digit == xoList[0] && digit == xoList[4] && digit == xoList[8]) {
      return true;
    }
    if (digit == xoList[2] && digit == xoList[4] && digit == xoList[6]) {
      return true;
    }
    for (int i = 0; i < 9; i = i + 3) {
      if (digit == xoList[i] &&
          digit == xoList[i + 1] &&
          digit == xoList[i + 2]) {
        return true;
      }
    }
    for (int i = 0; i < 3; i++) {
      if (digit == xoList[i] &&
          digit == xoList[i + 3] &&
          digit == xoList[i + 6]) {
        return true;
      }
    }
    return false;
  }
}
