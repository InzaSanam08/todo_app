import 'package:flutter/material.dart';
import 'package:todoapp/assets/App_color.dart/app_colors.dart';

class update_screen extends StatefulWidget {
  const update_screen({super.key});
  @override
  State<update_screen> createState() => _TodoState();
}

class _TodoState extends State<update_screen> {
  late double height;
  late double width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(backgroundColor: App_colors.Appbar_color,),
        body: Column(
      children: [
        Container(
          color: App_colors.Appbar_color,
          width: double.infinity,
          height: height * 0.074,
          child: Row(
            children: [
        
              Padding(
                padding: const EdgeInsets.only(left: 103, top: 17),
                child: Text('Edit Task',style: TextStyle(color: Colors.white,fontFamily: 'Jost',fontSize: 24),),
              ),
              
             ],
          ),
        ),Padding(
          padding: const EdgeInsets.symmetric(horizontal:35,vertical: 22),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Title'
            ),
          ),
        ),Padding(
          padding: const EdgeInsets.symmetric(horizontal:35,vertical: 22),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Detail'
            ),
          ),
        )
      ],
    ));
  }
}
