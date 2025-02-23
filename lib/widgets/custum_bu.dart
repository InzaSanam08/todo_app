import 'package:flutter/material.dart';

class Custum_Button extends StatefulWidget {

final double height ;
final double hwidh ;
final Function() onTap;

  const Custum_Button({super.key, required this.height, required this.hwidh, required this.onTap});


  @override
  State<Custum_Button> createState() => _Custum_ButtonState();
}

class _Custum_ButtonState extends State<Custum_Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: widget.height
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(15)
      ),

    ); 
  }
}








// GestureDetector(
      
//       onTap: (){},
//       child: Container(
//       height:widget.height ,
//       ));