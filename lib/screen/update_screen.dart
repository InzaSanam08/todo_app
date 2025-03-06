import 'package:flutter/material.dart';
import 'package:todoapp/assets/App_color.dart/app_colors.dart';
import 'package:todoapp/widgets/custum_bu.dart';
import 'package:todoapp/widgets/globle_list.dart';

class update_screen extends StatefulWidget {
  const update_screen({
    super.key,
  });
  @override
  State<update_screen> createState() => _TodoState();
}

class _TodoState extends State<update_screen> {
  late TextEditingController titleController;

  late TextEditingController detailController;

  @override
  void initState() {
    // TODO: implement initState
    int index = 0;
    titleController = TextEditingController(text: items[index]['title']);
    detailController = TextEditingController(text: items[index]['dettail']);
  }

  late double height;
  late double width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: App_colors.Appbar_color,
        ),
        body: Column(
          children: [
            Container(
              color: App_colors.Appbar_color,
              width: double.infinity,
              height: height * 0.074,
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 103, top: 17),
                    child: Text(
                      'Edit Task',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Jost',
                          fontSize: 24),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 22),
              child: TextFormField(
                controller: titleController,
                decoration: InputDecoration(
                    hintText: 'Title',
                    hintStyle:
                        TextStyle(color: App_colors.textfield_text_color)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 22),
              child: TextFormField(
                controller: detailController,
                decoration: InputDecoration(
                    hintText: 'Detail',
                    hintStyle:
                        TextStyle(color: App_colors.textfield_text_color)),
              ),
            ),
            const SizedBox(height: 20),
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
                  // widget.onTaskAdded(newTask);

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
        ));
  }
}
