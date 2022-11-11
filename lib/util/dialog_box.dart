import 'package:flutter/material.dart';
import 'package:todo_omg/util/my_buttom.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onCancel;
  VoidCallback onSaved;

 DialogBox({super.key, required this.controller,required this.onCancel,required this.onSaved});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.green[300],
      content: Container(
        height: 120,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Adicione sua tarefa",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton(text: "Save", onPressed: onSaved),
              const SizedBox(
                width: 8,
              ),
              MyButton(text: "Cancel", onPressed: onCancel),
            ],
          ),
        ]),
      ),
    );
  }
}
