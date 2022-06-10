import 'package:design/widgets/task.dart';
import 'package:flutter/material.dart';

class TasksContainer extends StatelessWidget {
  const TasksContainer({Key? key, required this.width, required this.height})
      : super(key: key);

  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: width * 0.05,
              right: width * 0.05,
              top: height * 0.04,
              bottom: height * 0.01),
          child: Row(
            children: [
              Text("My Tasks",
                  style: TextStyle(
                    fontSize: width * 0.065,
                    color: const Color(0xffFFFFFF),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  )),
              Expanded(child: Container()),
              Container(
                padding: EdgeInsets.all(width * 0.044),
                decoration: BoxDecoration(
                  color: const Color(0xff309398),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(Icons.calendar_today,
                    size: width * 0.07, color: const Color(0xffFFFFFF)),
              )
            ],
          ),
        ),
        //Task
        Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.08, vertical: height * 0.01),
            child: Column(
              children: const [
                Task(
                  title: "To Do",
                  description: "5 tasks now. 1 started",
                  colorTask: Color(0xffE46471),
                  icon: Icons.alarm
                ),
                Task(
                  title: "In Progress",
                  description: "1 tasks now. 1 started",
                  colorTask: Color(0xffF9BE7C),
                  icon: Icons.blur_circular_rounded,
                ),
                Task(
                  title: "Done",
                  description: "18 tasks now. 13 started",
                  colorTask: Color(0xff6588E4),
                  icon: Icons.check_circle_outline,
                ),
              ],
            )),
      ],
    );
  }
}
