import 'package:booking_app/screens/home_screen.dart';
import 'package:booking_app/screens/search_screen.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;
  static final List<Widget> widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const Text('ticket'),
    const Text('profile'),
  ];
  void onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: widgetOptions[currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526480),
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(FluentIcons.home_12_filled),
            icon: Icon(FluentIcons.home_12_regular),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(FluentIcons.search_12_filled),
            icon: Icon(FluentIcons.search_12_regular),
            label: 'search',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(FluentIcons.ticket_horizontal_20_filled),
            icon: Icon(FluentIcons.ticket_horizontal_20_regular),
            label: 'ticket',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(FluentIcons.person_12_filled),
            icon: Icon(FluentIcons.person_12_regular),
            label: 'profile',
          ),
        ],
      ),
    );
  }
}
