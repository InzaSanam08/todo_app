import 'package:flutter/material.dart';
import 'package:flutter_svg_image/flutter_svg_image.dart';
import 'package:todoapp/assets/App_color.dart/app_colors.dart';
import 'package:todoapp/widgets/custum_container.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});
  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  late double height;
  late double width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xffD6D7EF),
        appBar: AppBar(
          backgroundColor: App_colors.Appbar_color,
        ),
        body: Column(
          children: [
            Container(
              color: App_colors.Appbar_color,
              width: double.infinity,
              height: height * 0.074,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 19, top: 16),
                    child: Text(
                      'TODO APP',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Jost',
                          fontSize: 24),
                    ),
                  ),
                  SizedBox(
                    width: 211,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 14, top: 16),
                    child: Container(
                        // height: height*0.05,
                        // width: width*0.09,
                        child: Image(
                      image:
                          SvgImage.asset('lib/assets/tileImages/claender.svg'),
                    )),
                  ),
                ],
              ),
            ),Custum_container()
          ],
        )
        );
  }
}
