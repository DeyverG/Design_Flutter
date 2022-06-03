import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
              color: Color(0xff1B9EE5),
              text: 'General',
              icon: Icons.border_all_rounded),
          _SingleCard(
              color: Color(0xff7450F4),
              text: 'Transport',
              icon: Icons.directions_bus_filled_sharp),
        ]),
        TableRow(children: [
          _SingleCard(
              color: Color(0xffFA3ADA),
              text: 'Shopping',
              icon: Icons.shopping_bag_rounded),
          _SingleCard(
              color: Color(0xffF98A47),
              text: 'Bills',
              icon: Icons.paypal_outlined),
        ]),
        TableRow(children: [
          _SingleCard(
              color: Color(0xff5772F5),
              text: 'Entertainment',
              icon: Icons.movie_filter_rounded),
          _SingleCard(
              color: Color(0xff20D956),
              text: 'Grocery',
              icon: Icons.local_grocery_store_rounded),
        ]),
        TableRow(children: [
          _SingleCard(
              color: Color(0xff1B9EE5),
              text: 'General',
              icon: Icons.border_all_rounded),
          _SingleCard(
              color: Color(0xff7450F4),
              text: 'Transport',
              icon: Icons.directions_bus_filled_sharp),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  const _SingleCard(
      {Key? key, required this.text, required this.icon, required this.color})
      : super(key: key);

  final String text;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;

    var boxDecoration = BoxDecoration(
      color: const Color.fromRGBO(62, 66, 107, 0.7),
      borderRadius: BorderRadius.circular(20),
    );

    var boxDecoration2 = BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(width * 0.06),
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: const [0.0, 0.5],
        colors: [
          Colors.white,
          color,
        ],
      ),
    );

    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: height * 0.22,
            decoration: boxDecoration,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(width * 0.03),
                  decoration: boxDecoration2,
                  // ignore: sort_child_properties_last
                  child: Icon(
                    icon,
                    size: width * 0.06,
                    color: const Color.fromRGBO(255, 255, 255, 0.8),
                  ),
                ),
                SizedBox(height: height * 0.03),
                Text(
                  text,
                  style: TextStyle(color: color, fontSize: 18),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
