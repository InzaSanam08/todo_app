
import 'package:flutter/material.dart';
import 'package:flutter_svg_image/flutter_svg_image.dart';
import 'package:todoapp/assets/App_color.dart/app_colors.dart';
import 'package:todoapp/screen/add_screen.dart';
import 'package:todoapp/screen/update_screen.dart';
import 'package:todoapp/widgets/globle_list.dart';

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
      floatingActionButton: FloatingActionButton(
        backgroundColor: App_colors.Appbar_color,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Add_screen(
                onTaskAdded: (newTask) {
                  setState(() {
                    items.add(newTask);
                  });
                },
              ),
            ),
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      backgroundColor: const Color(0xffD6D7EF),
      appBar: AppBar(
        toolbarHeight: 118.0,
        backgroundColor: App_colors.Appbar_color,
        title: const Padding(
          padding: EdgeInsets.only(left: 19, top: 40.0),
          child: Text(
            'TODO APP',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Jost', fontSize: 24),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 21, top: 40),
            child: Image(
              image: SvgImage.asset('lib/assets/tileImages/claender.svg'),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(top: 15, left: 7, right: 7),
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ListTile(
                            title: Padding(
                              padding: const EdgeInsets.only(top: 15, left: 19),
                              child: Text(
                                'Title: ${items[index]['title']}',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: App_colors.tile_text_colors,
                                    fontFamily: 'Jost',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(left: 19),
                              child: Text('Detail: ${items[index]['dettail']}'),
                            ),
                            trailing: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const update_screen()),
                                      );
                                      // Navigator.pushNamed(context,'/lib/screen/update_screen.dart');
                                    },
                                    icon: Icon(
                                      Icons.edit,
                                      color: App_colors.Appbar_color,
                                    )),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        items.removeAt(index);
                                      });
                                    },
                                    icon: Icon(
                                      Icons.delete,
                                      color: App_colors.Appbar_color,
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}


















































// import 'package:flutter/material.dart';
// import 'package:flutter_svg_image/flutter_svg_image.dart';
// import 'package:todoapp/assets/App_color.dart/app_colors.dart';
// import 'package:todoapp/screen/add_screen.dart';
// import 'package:todoapp/widgets/globle_list.dart';

// class Todo extends StatefulWidget {

//   const Todo({super.key,});
//   @override
//   State<Todo> createState() => _TodoState();
// }

// class _TodoState extends State<Todo> {
//   late double height;
//   late double width;

//   @override
//   Widget build(BuildContext context) {
//     height = MediaQuery.of(context).size.height;
//     width = MediaQuery.of(context).size.width;

//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: App_colors.Appbar_color,
//         onPressed: () {
//           Navigator.push(context,
//               MaterialPageRoute(builder: (context) => const Add_screen()));
//         },
//         child: const Icon(
//           Icons.add,
//           color: Colors.white,
//         ),
//       ),
//       backgroundColor: const Color(0xffD6D7EF),
//       appBar: AppBar(
//         toolbarHeight: 118.0,
//         backgroundColor: App_colors.Appbar_color,
//         title: const Padding(
//           padding: EdgeInsets.only(left: 19, top: 40.0),
//           child: Text(
//             'TODO APP',
//             style: TextStyle(
//                 color: Colors.white, fontFamily: 'Jost', fontSize: 24),
//           ),
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 21, top: 40),
//             child: Image(
//               image: SvgImage.asset('lib/assets/tileImages/claender.svg'),
//             ),
//           )
//         ],
//       ),
//       body: SafeArea(
//         child: Column(
//           children: [
//             Expanded(
//               child: ListView.builder(
//                   itemCount:items.length,
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: const EdgeInsets.only(top: 15, left: 7, right: 7),
//                       child: Card(
//                         elevation: 5, // Elevation for the Card
//                         shape: RoundedRectangleBorder(
//                           borderRadius:
//                               BorderRadius.circular(15), // Border radius for Card
//                         ),
//                         child: Container(
//                           decoration: BoxDecoration(
//                             color: App_colors.tile_iconcolor, // Background color
//                             borderRadius: BorderRadius.circular(
//                                 15), // Border radius for ListTile
//                           ),
//                           child: ListTile(
//                             title: Padding(
//                               padding: EdgeInsets.only(top: 15, left: 19),
//                               child: Text(
//                                 'Title: ${items[index]['title']}',
//                                 style: TextStyle(
//                                     fontSize: 13,
//                                     color: App_colors.tile_text_colors,
//                                     fontFamily: 'Jost',
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                             subtitle: Padding(
//                               padding: EdgeInsets.only(left: 19),
//                               child: Text('Detail: ${items[index]['dettail']}'),
//                             ),
//                             // trailing: Row(
//                             //   mainAxisAlignment: MainAxisAlignment.end,
//                             //   mainAxisSize: MainAxisSize.min,
//                             //   children: [
//                             //    IconButton(onPressed: (){
//                             // Navigator.pushNamed(context,'/lib/screen/update_screen.dart');
//                             //    }, icon:Icon(Icons.edit)),
//                             //    IconButton(onPressed: (){
//                             //     setState(() {
//                             //       items.removeAt(index);
//                             //     });

//                             //    }, icon:Icon(Icons.delete))
//                             //    ],
//                             // ),
//                           ),
//                         ),
//                       ),
//                     );
//                   }),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
