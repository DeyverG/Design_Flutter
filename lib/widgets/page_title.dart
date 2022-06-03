import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;

    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(
            top: height * 0.03, left: width * 0.06, right: width * 0.38),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Classify transactions",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: height * 0.01),
            const Text("Classify this transaction into a particular category",
                style: TextStyle(color: Colors.white, fontSize: 17)),
          ],
        ),
      ),
    );
  }
}
