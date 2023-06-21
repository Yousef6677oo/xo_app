import 'package:flutter/material.dart';

import '../utilities/app_colors.dart';

class XOButton extends StatelessWidget {
  int index;
  String digitName;

  Function onClick;
  XOButton({required this.index,required this.digitName,required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(5.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
          foregroundColor: AppColors.accentColor,
          backgroundColor: AppColors.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )
          ),
          onPressed: () {
            onClick(index);
          },
          child: Text(
            digitName,
            style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
          )),
    ));
  }
}
