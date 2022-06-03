import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.pink,
      elevation: 11,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      currentIndex: 0,
      items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.calendar_month, size: 33,),
        label: 'Calendario'
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.pie_chart_outline_outlined, size: 33,),
        label: 'Grafica'
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.supervised_user_circle_outlined, size: 33,),
        label: 'Usuarios'
      ),
    ]);
  }
}
