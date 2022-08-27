import 'package:booking_app/screens/home_page.dart';
import 'package:booking_app/screens/search_screen.dart';
import 'package:booking_app/utiles/styles.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectetIndex = 0;
  static List<Widget> listBottomBar = [
    const HomePage(),
    const SearchScreen(),
    const Text('this is ticket page'),
    const Text('this is acciunt page'),
  ];
  void selectedItembar(int i) {
    setState(() {
      _selectetIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: listBottomBar[_selectetIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blueGrey[800],
          onTap: selectedItembar,
          currentIndex: _selectetIndex,
          elevation: 20,
          iconSize: 28,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.white,
          selectedItemColor: primary,
          items: const [
            BottomNavigationBarItem(
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                label: 'home'),
            BottomNavigationBarItem(
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                label: 'search'),
            BottomNavigationBarItem(
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                label: 'ticket'),
            BottomNavigationBarItem(
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                label: 'account'),
          ]),
    );
  }
}
