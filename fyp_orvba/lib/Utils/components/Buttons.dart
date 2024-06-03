import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles/textStyles.dart';

class RoundedButton extends StatelessWidget {
  String title;
  VoidCallback? onPressed;
  RoundedButton({super.key, required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: const Color(0xff3F54BE),),
          child: Center(
              child: Text(
                title,
                style: bold11White,
              )),
        ),
      ),
    );
  }
}

class BorderedButton extends StatelessWidget {
  String title;
  BorderedButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
             BoxShadow(
              offset: Offset(0, 0),
              color: Color(0xFFA2C7F8),
              blurRadius: 3
            ),

          ],
          border: Border.all(color: const Color(0xff3F54BE), width: 2),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
            child: Text(
              title,
              style: bold14BlueAccent,
            )),
      ),
    );
  }
}

class SmoothButton extends StatelessWidget {
  String title;
  IconData? iconData;
  Color backColor, foreColor;
  SmoothButton({super.key, required this.title, this.iconData, this.backColor = Colors.blueAccent, this.foreColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    Widget TextOrIcon(){
      if(iconData == null)
        return Text(title,style: bold14White,);
      else
        return Icon(iconData, size: 50,color: foreColor,);
    }
    return Expanded(
      child: Container(
        height: 70,
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: backColor,
        ),
        child: Center(
            child: TextOrIcon(),
        ),
      ),
    );
  }
}

