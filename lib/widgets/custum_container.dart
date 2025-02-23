import 'package:flutter/material.dart';
import 'package:flutter_svg_image/flutter_svg_image.dart';
import 'package:todoapp/assets/App_color.dart/app_colors.dart';

class Custum_container extends StatefulWidget {
  const Custum_container({super.key});

  @override
  State<Custum_container> createState() => _Custum_containerState();
}

class _Custum_containerState extends State<Custum_container> {
  late double height;
  late double width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 22,),
      child: Card(
        
        child: Container(
        
          height: height * 0.082,
          width: width*1,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15)
              ),
          child: ListTile(
            title: Text('TODO TITLE',style: TextStyle(fontSize: 13,color: App_colors.tile_text_colors),),
           subtitle:Text('TODO SUB TITLE',style: TextStyle(fontSize: 13,color: Colors.black),), 
           
           trailing: Row(
            children: [
                Padding(
                    padding: const EdgeInsets.only(right: 14, top: 16),
                    child: Container(
                        height: height*0.04,
                        width: width*0.04,
                        child: Image(
                      image:
                          SvgImage.asset('lib/assets/tileImages/Vector (1).svg'),
                    )),
                  ),
            ],
           ),
          ),
        ),
      ),
    );
  }
}
