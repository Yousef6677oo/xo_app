import 'package:flutter/material.dart';
import 'package:xo/utilities/app_colors.dart';

import 'login_screen.dart';

class FirstScreen extends StatelessWidget {
  static String routeName = "first screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 83, 21, 210),
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
                Navigator.pushReplacementNamed(context, LoginScreen.routeName);
              },
              style: OutlinedButton.styleFrom(
                  backgroundColor: AppColors.accentColor),
              child: const Text("New Games",
                  style: TextStyle(fontSize: 26, color: Colors.black)),
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
