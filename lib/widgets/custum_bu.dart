import 'package:flutter/material.dart';
import 'package:todoapp/assets/App_color.dart/app_colors.dart';

class Custum_Button extends StatefulWidget {
final String buttonTitle;
final double height ;
final double widh ;
final Function() onTap;

  const Custum_Button({super.key, required this.height, required this.widh, required this.onTap, required this.buttonTitle});


  @override
  State<Custum_Button> createState() => _Custum_ButtonState();
}

class _Custum_ButtonState extends State<Custum_Button> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:widget.onTap,
      child: Container(
        height: widget.height,
        width: widget.widh,

        decoration: BoxDecoration(
          color: App_colors.Appbar_color,
          borderRadius: BorderRadius.circular(15)
        ),
        child: Center(child: Text(widget.buttonTitle.toString(),style: const TextStyle(fontFamily: 'Jost',fontWeight: FontWeight.bold),),),
      
      ),
    ); 
  }
}








// GestureDetector(
      
//       onTap: (){},
//       child: Container(
//       height:widget.height ,
//       ));