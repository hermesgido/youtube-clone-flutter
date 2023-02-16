import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      items: items,
    );
  }
}

List<BottomNavigationBarItem> items = [
  const BottomNavigationBarItem(
    backgroundColor: Color.fromARGB(255, 248, 245, 245),
    label: 'Home',
    icon: Icon(
      Icons.home,
      color: Colors.white,
    ),
  ),
  const BottomNavigationBarItem(
    label: 'Shorts',
    icon: Icon(
      Icons.payments,
      color: Colors.white,
    ),
  ),
  const BottomNavigationBarItem(
    label: '',
    icon: Icon(
      Icons.add_circle_outline,
      size: 35,
      color: Colors.white,
    ),
  ),
  const BottomNavigationBarItem(
    label: 'Subscriptions',
    icon: Icon(
      Icons.subscriptions_outlined,
      color: Colors.white,
    ),
  ),
  const BottomNavigationBarItem(
    label: 'Library',
    icon: Icon(
      Icons.library_add,
      color: Colors.white,
    ),
  ),
];
