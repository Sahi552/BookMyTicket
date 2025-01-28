import 'package:bookmyticket/utils/theme.dart';
import 'package:bookmyticket/view/pages/home_screen.dart';
import 'package:bookmyticket/view/pages/live_event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottamnavbar extends StatefulWidget {
  const Bottamnavbar({super.key});

  @override
  State<Bottamnavbar> createState() => _BottamnavbarState();
}

class _BottamnavbarState extends State<Bottamnavbar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    LiveEvent()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.house_fill),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplane_ticket_outlined),
            label: 'Events',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppTheme.footerColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
