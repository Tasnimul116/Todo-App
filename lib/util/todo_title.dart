import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  final String taskname;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  ToDoTile(
      {super.key,
      required this.taskname,
      required this.onChanged,
      required this.taskCompleted,
      required this.deleteFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
        child: Slidable(
          endActionPane: ActionPane(
            motion: StretchMotion(),
            children: [
              SlidableAction(
                onPressed: deleteFunction,
                icon: Icons.delete,
                backgroundColor: Colors.red,
                borderRadius: BorderRadius.circular(10),
              )
            ],
          ),
          child: Container(
            padding: EdgeInsets.all(24),
            child: Row(
              children: [
                //checkbox

                Checkbox(
                  value: taskCompleted,
                  onChanged: onChanged,
                  activeColor: Color.fromARGB(255, 0, 0, 0),
                ),

                //task title
                Text(taskname,
                    style: TextStyle(
                        decoration: taskCompleted
                            ? TextDecoration.lineThrough
                            : TextDecoration.none)),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.cyan[300],
                borderRadius: BorderRadius.circular(10)),
          ),
        ));

    // TODO implement tile
  }
}
