import 'package:flutter/material.dart';

class ScrollDesignScreen extends StatelessWidget {
  const ScrollDesignScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;

    // Estilos del Container
    var boxDecoration = const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5,0.5],
            colors: [Color(0xff7EEBCB),Color(0xff30BAD6),]
        ),
      );
      
    return Scaffold(
        body: Container(
      // ignore: prefer_const_constructors
      decoration: boxDecoration,
      child: PageView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        children: [Page1(height: height), const Page2()],
      ),
    ));
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Image
        const Background(),

        // Main Content - Column
        MainContent(height: height)
      ],
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff30BAD6),
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: const Image(image: AssetImage('assets/scroll-1.png')));
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        CustomText(
          height: height,
          text: "11º",
          marginTop: 0.05,
        ),
        CustomText(
          height: height,
          text: "Miercoles",
          marginTop: 0.01,
        ),
        Expanded(child: Container()),
        const Icon(
          Icons.keyboard_arrow_down_sharp,
          color: Colors.white,
          size: 100,
        ),
      ],
    ));
  }
}

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    required this.height,
    required this.text,
    required this.marginTop,
  }) : super(key: key);

  final double height;
  final double marginTop;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: height * marginTop),
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 50, fontWeight: FontWeight.w600),
        ));
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: () {},
          // ignore: prefer_const_constructors, sort_child_properties_last
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: const Text(
              "Bienvenido",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          style: TextButton.styleFrom(
              backgroundColor: const Color(0xff0098FA),
              shape: const StadiumBorder()),
        ),
      ),
    );
  }
}
