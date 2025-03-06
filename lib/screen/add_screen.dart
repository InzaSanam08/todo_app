
import 'package:flutter/material.dart';
import 'package:todoapp/assets/App_color.dart/app_colors.dart';
import 'package:todoapp/widgets/custum_bu.dart';

class Add_screen extends StatefulWidget {
  final Function(Map<String, String>) onTaskAdded;

  const Add_screen({super.key, required this.onTaskAdded});

  @override
  State<Add_screen> createState() => _AddScreenState();
}

class _AddScreenState extends State<Add_screen> {
  late double height;
  late double width;

  TextEditingController titleController = TextEditingController();
  TextEditingController detailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: App_colors.Appbar_color,
        title: const Text(
          'Add Task',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Jost',
            fontSize: 24,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 22),
        child: Column(
          children: [
            TextFormField(
              controller: titleController,
              decoration: const InputDecoration(hintText: 'Title'),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: detailController,
              decoration: const InputDecoration(hintText: 'Detail'),
            ),
            const SizedBox(height: 30),
            Custum_Button(
              height: height * 0.069,
              widh: width * 0.9,
              onTap: () {
                if (titleController.text.isNotEmpty &&
                    detailController.text.isNotEmpty) {
                  final newTask = {
                    'title': titleController.text,
                    'dettail': detailController.text,
                  };

                  // Call the callback with the new task
                  widget.onTaskAdded(newTask);

                  // Clear the text fields
                  titleController.clear();
                  detailController.clear();

                  // Close the screen
                  Navigator.pop(context);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: App_colors.Appbar_color,
                      content: const Text('Please fill in both fields'),
                    ),
                  );
                }
              },
              buttonTitle: 'Add Task',
            ),
          ],
        ),
      ),
    );
  }
}

























































































// // import 'package:flutter/material.dart';
// // import 'package:todoapp/assets/App_color.dart/app_colors.dart';
// // import 'package:todoapp/widgets/custum_bu.dart';
// // import 'package:todoapp/widgets/globle_list.dart';

// // class Add_screen extends StatefulWidget {
// //   const Add_screen({super.key});
// //   @override
// //   State<Add_screen> createState() => _TodoState();
// // }

// // class _TodoState extends State<Add_screen> {
// //   late double height;
// //   late double width;

// // TextEditingController title = TextEditingController();
// // TextEditingController dettail = TextEditingController();

// //   @override
// //   Widget build(BuildContext context) {
// //     height = MediaQuery.of(context).size.height;
// //     width = MediaQuery.of(context).size.width;

// //     return Scaffold(
// //         appBar: AppBar(
// //           backgroundColor: App_colors.Appbar_color,
// //         ),
// //         body: Column(
// //           children: [
// //             Container(
// //               color: App_colors.Appbar_color,
// //               width: double.infinity,
// //               height: height * 0.074,
// //               child: const Row(
// //                 children: [
// //                   Padding(
// //                     padding: EdgeInsets.only(left: 103, top: 17),
// //                     child: Text(
// //                       'Add Task',
// //                       style: TextStyle(
// //                           color: Colors.white,
// //                           fontFamily: 'Jost',
// //                           fontSize: 24),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //             Padding(
// //               padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 22),
// //               child: TextFormField(
// //                 controller: title,
// //                 decoration: const InputDecoration(hintText: 'Title'),
// //               ),
// //             ),
// //             Padding(
// //               padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 22),
// //               child: TextFormField(
// //                 controller: dettail,
// //                 decoration: const InputDecoration(hintText: 'Detail'),
// //               ),
// //             ),
// //             Custum_Button(
// //               height: height * 0.069,
// //               widh: width * 0.9,
// //               onTap: () {
// //                 setState(() {
// //                   items.add({'title': title.text, 'dettail': dettail.text});
// //                   print('Add hogaya');
// //                     title.clear();
// //                     dettail.clear();
// //                    Navigator.pop(context);
// //                  }
// //                 );
// //               },
// //               buttonTitle: 'add',
// //             )
// //           ],
// //         ));
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:todoapp/assets/App_color.dart/app_colors.dart';
// import 'package:todoapp/widgets/custum_bu.dart';  // Assuming this is a custom button widget
// import 'package:todoapp/widgets/globle_list.dart'; // Assuming this holds the global 'items' list

// class Add_screen extends StatefulWidget {
//   const Add_screen({super.key});

//   @override
//   State<Add_screen> createState() => _AddScreenState();
// }

// class _AddScreenState extends State<Add_screen> {
//   late double height;
//   late double width;

//   // Text editing controllers for Title and Detail fields
//   TextEditingController titleController = TextEditingController();
//   TextEditingController detailController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     height = MediaQuery.of(context).size.height;
//     width = MediaQuery.of(context).size.width;

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: App_colors.Appbar_color,
//         title: const Text(
//           'Add Task',
//           style: TextStyle(
//             color: Colors.white,
//             fontFamily: 'Jost',
//             fontSize: 24,
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 22),
//         child: Column(
//           children: [
//             // Title Field
//             TextFormField(
//               controller: titleController,
//               decoration: const InputDecoration(hintText: 'Title'),
//               // Validation to check if title is not empty
//             ),
//             const SizedBox(height: 20),

//             // Detail Field
//             TextFormField(
//               controller: detailController,
//               decoration: const InputDecoration(hintText: 'Detail'),
//               // Validation to check if detail is not empty
//             ),
//             const SizedBox(height: 30),

//             // Add Button
//             Custum_Button(
//               height: height * 0.069,
//               widh: width * 0.9,
//               onTap: () {
//                 // Validate input
//                 if (titleController.text.isNotEmpty && detailController.text.isNotEmpty) {
//                   setState(() {
//                     // Add task to the global list
//                     items.add({
//                       'title': titleController.text,
//                       'dettail': detailController.text,
//                     });

//                     // Clear text fields after adding the task
//                     titleController.clear();
//                     detailController.clear();

//                     // Show a message or log (Optional)
//                     print('Task Added: ${titleController.text}');

//                     // Close the screen and return to the previous one
//                     // Navigator.pop(context);
//                   });
//                 } else {
//                   // Show an error if fields are empty
//                   ScaffoldMessenger.of(context).showSnackBar(
//                      SnackBar(
//                       backgroundColor: App_colors.Appbar_color,
//                       content: Text('Please fill in both fields')),
//                   );
//                 }
//               },
//               buttonTitle: 'Add Task',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
