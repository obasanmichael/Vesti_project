import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: '',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.green,
      onTap: _onItemTapped,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Colors.white,
      elevation: 10,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.grey,
      selectedIconTheme: IconThemeData(size: 30, color: Colors.green, shadows: [
        Shadow(
          color: Colors.greenAccent,
          blurRadius: 10,
        )
      ]),
    );
  }
}
