import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  const Task(
      {Key? key,
      required this.title,
      required this.description,
      required this.colorTask, required this.icon})
      : super(key: key);

  final String title;
  final String description;
  final Color colorTask;
  final IconData icon;
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;

    return Container(
      margin: EdgeInsets.only(bottom: height * 0.025),
      child: Row(
        children: [
          //Icon
          Container(
            padding: EdgeInsets.all(width * 0.045),
            margin: EdgeInsets.only(right: width * 0.05),
            decoration: BoxDecoration(
                color: colorTask, borderRadius: BorderRadius.circular(50)),
            child: Icon(icon, size: width * 0.08, color: const Color(0xffFFFFFF)),
          ),
          //Column
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(
                title,
                style: TextStyle(
                  fontSize: width * 0.05,
                  color: const Color(0xffFFFFFF),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
              //Description
              Text(
                description,
                style: TextStyle(
                  fontSize: width * 0.04,
                  color: const Color(0xffFFFFFF),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
