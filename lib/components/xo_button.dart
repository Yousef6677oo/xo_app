import 'package:flutter/material.dart';

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
          foregroundColor: Color(0xffe5c521),
          backgroundColor: Color(0xff131454),
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
