import 'package:design/widgets/card_table.dart';
import 'package:flutter/material.dart';

import '../widgets/page_title.dart';
import 'package:design/widgets/background.dart';
import 'package:design/widgets/custom_bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          //Background
          Background(),

          // Home Body
          _HomeBody()
        ],
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: const [
          // Titulos
          PageTitle(),

          //Card Table
          CardTable()
        ],
      ),
    );
  }
}
