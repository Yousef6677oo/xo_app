import 'package:flutter/material.dart';
import 'package:xo/utilities/app_colors.dart';

import 'login_screen.dart';

class FirstScreen extends StatelessWidget {
  static String routeName = "first screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Text(
              "Tic Tac Toe",
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: AppColors.accentColor),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              "XO",
              style: TextStyle(
                  fontSize: 120,
                  fontWeight: FontWeight.bold,
                  color: AppColors.accentColor),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
              style: OutlinedButton.styleFrom(
                  backgroundColor: AppColors.accentColor),
              child:  Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width*0.5,
                height: MediaQuery.of(context).size.height*0.07,
                child: const Text("New Games",style: TextStyle(fontSize: 26, color: Colors.black)),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
              style: OutlinedButton.styleFrom(backgroundColor: Colors.transparent,side: BorderSide(width: 3.0, color: AppColors.accentColor),),
              child:  Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width*0.5,
                height: MediaQuery.of(context).size.height*0.07,
                child:  Text("Scores",style: TextStyle(fontSize: 26, color: AppColors.whiteColor)),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
