// import 'package:flutter/material.dart';
// import 'package:todoapp/assets/App_color.dart/app_colors.dart';

// class Custum_container extends StatefulWidget {

//   const Custum_container({
//     super.key,
//   });

//   @override
//   State<Custum_container> createState() => _Custum_containerState();
// }

// class _Custum_containerState extends State<Custum_container> {
//   late double height;
//   late double width;
//   @override
//   Widget build(BuildContext context) {
//     height = MediaQuery.of(context).size.height;
//     width = MediaQuery.of(context).size.width;
//     return  Scaffold(
// body:  Padding(
//         padding: EdgeInsets.only(
//             top: 15,
//             left: 7,
//             right: 7
//         ),

//         child: Card(

//           elevation: 5,
//           child: ListTile(
//           tileColor: App_colors.tile_iconcolor,
//             title: const Padding(padding: EdgeInsets.only(top: 15,left: 19),child: Text('tittles'),),
//             subtitle: Padding(padding: EdgeInsets.only(left: 19),child: Text('details'),) ,
//           )
//         )),
//     ) ;

//   }
// }

////////////////////////////////
///
///
library;



import 'package:flutter/material.dart';
import 'package:todoapp/assets/App_color.dart/app_colors.dart';

class Custum_container extends StatefulWidget {
  final String title;
  final String detail;
  const Custum_container({
    super.key,
    required this.title,
    required this.detail,
  });

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
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 7, right: 7),
        child: Card(
          elevation: 5, // Elevation for the Card
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15), // Border radius for Card
          ),
          child: Container(
            decoration: BoxDecoration(
              color: App_colors.tile_iconcolor, // Background color
              borderRadius:
                  BorderRadius.circular(15), // Border radius for ListTile
            ),
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.only(top: 15, left: 19),
                child: Text(
                  widget.title,
                  style: TextStyle(
                      fontSize: 13,
                      color: App_colors.tile_text_colors,
                      fontFamily: 'Jost',
                      fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(left: 19),
                child: Text(widget.detail),
              ),
            ),
          ),
        ),
      ),
    );
  }
}




                    
                //     const SizedBox(height: 5,),
                //       Text(
                //              '${  widget.todoitems[index]['dettail']   }',
                //   style: const TextStyle(
                //       fontSize: 10,
                //       color: Colors.black,
                //       fontFamily: 'Jost',
                //       fontWeight: FontWeight.bold),
                // ),