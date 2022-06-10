import 'package:flutter/material.dart';

class BackgroundToDo extends StatelessWidget {
  const BackgroundToDo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;

    return Container(
      width: width,
      height: height * 0.25,
      decoration: const BoxDecoration(
        color: Color(0xffF9BE7C),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(55),
          bottomRight: Radius.circular(55),
        ),
      ),
    );
  }
}
