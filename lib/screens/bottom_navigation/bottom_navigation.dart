import 'package:book_airplane_ticket/screens/home/home_screen.dart';
import 'package:book_airplane_ticket/screens/profile/profile_screen.dart';
import 'package:book_airplane_ticket/screens/search/search_screen.dart';
import 'package:book_airplane_ticket/screens/tickets/tickets_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  static final List<Widget> screens = <Widget>[
    HomeScreen(),
    SearchScreen(),
    TicketsScreen(),
    ProfileScreen()
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(child: screens[currentIndex]),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
        },
        selectedIndex: currentIndex,
        elevation: 10,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        destinations: const [
          NavigationDestination(
            icon: Icon(CupertinoIcons.house),
            label: "Baş sahypa",
            selectedIcon: Icon(
              CupertinoIcons.house_fill,
            ),
          ),
          NavigationDestination(
            icon: Icon(CupertinoIcons.search),
            label: "Gözleg",
          ),
          NavigationDestination(
            icon: Icon(CupertinoIcons.ticket),
            label: "Biletlerim",
            selectedIcon: Icon(
              CupertinoIcons.ticket_fill,
            ),
          ),
          NavigationDestination(
            icon: Icon(CupertinoIcons.person),
            label: "Profil",
            selectedIcon: Icon(
              CupertinoIcons.person_fill,
            ),
          ),
        ],
      ),
    );
  }
}
