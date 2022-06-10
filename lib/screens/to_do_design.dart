import 'package:design/widgets/background_todo.dart';
import 'package:design/widgets/taks_container.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ToDoDesign extends StatelessWidget {
  const ToDoDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;

    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Stack(children: [
            //Background
            const BackgroundToDo(),

            // Home Body
            Column(
              children: [
                IconsTop(height: height, width: width),
                Avatar(height: height, width: width),
                TasksContainer(height: height, width: width),
                Projects(height: height, width: width),
              ],
            )
          ])
        ],
      )),
    );
  }
}

class IconsTop extends StatelessWidget {
  const IconsTop({Key? key, required this.width, required this.height})
      : super(key: key);

  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.05, vertical: height * 0.035),
      child: Row(
        children: [
          Icon(Icons.menu_rounded,
              size: width * 0.08, color: const Color(0xff0D253F)),
          Expanded(child: Container()),
          Icon(Icons.search_rounded,
              size: width * 0.08, color: const Color(0xff0D253F)),
        ],
      ),
    );
  }
}

class Avatar extends StatelessWidget {
  const Avatar({Key? key, required this.width, required this.height})
      : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircularPercentIndicator(
            radius: width * 0.126,
            lineWidth: width * 0.013,
            percent: 0.8,
            backgroundColor: Colors.transparent,
            progressColor: const Color(0xffE46471),
            circularStrokeCap: CircularStrokeCap.round,
            center: Image(
                image: const AssetImage('assets/avatar.png'),
                width: width * 0.2),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Text(
                  'Deyver García',
                  style: TextStyle(
                    fontSize: width * 0.055,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff0D253F),
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              Text('App Developer',
                  style: TextStyle(
                      fontSize: width * 0.04,
                      color: const Color(0xff8D6A43),
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.italic))
            ],
          )
        ],
      ),
    );
  }
}

class Projects extends StatelessWidget {
  const Projects({Key? key, required this.width, required this.height})
      : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: width * 0.05),
          alignment: Alignment.topLeft,
          child: Text(
            "Active Projects",
            style: TextStyle(
                fontSize: width * 0.065,
                color: const Color(0xffFFFFFF),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: width * 0.06, left: width * 0.07),
          child: SizedBox(
            width: width,
            height: 320,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Project(
                    percent: 25,
                    color: Color(0xff309398),
                    title: "Medical App",
                    description: "9 hours progress"),
                Project(
                    percent: 80,
                    color: Color(0xffE46471),
                    title: "Making History Notes",
                    description: "20 hours progress")
              ],
            ),
          ),
        )
      ],
    );
  }
}

class Project extends StatelessWidget {
  const Project(
      {Key? key,
      required this.percent,
      required this.color,
      required this.title,
      required this.description})
      : super(key: key);

  final int percent;
  final Color color;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;

    return Container(
      margin: EdgeInsets.only(right: width * 0.04, top: height * 0.025),
      padding: EdgeInsets.symmetric(vertical: height * 0.020),
      width: 200,
      height: 280,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(50)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: CircularPercentIndicator(
              radius: 45,
              lineWidth: 7,
              percent: percent / 100,
              progressColor: const Color(0xffFFFFFF),
              backgroundColor: const Color.fromRGBO(255, 255, 255, 0.5),
              circularStrokeCap: CircularStrokeCap.round,
              center: Text('$percent%',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600)),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 60, bottom: 1),
            width: 140,
            child: Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Text(
            description,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
