import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'screens/addscreen.dart';
import 'screens/expensescreen.dart';
import 'screens/reportscreen.dart';
import 'screens/settingsscreen.dart';
import '../customwidgets/title.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(scaffoldBackgroundColor: Colors.white),
    home: const NavigatonBar(),
    debugShowCheckedModeBanner: false,
  ));
}

class NavigatonBar extends StatefulWidget {
  const NavigatonBar({super.key});

  @override
  State<NavigatonBar> createState() => _NavigatonBarState();
}

class _NavigatonBarState extends State<NavigatonBar> {
  int selectedIndex = 0;

// Screens for the nav-bar
  static const List<TitleWidget> pages = [
    ExpensesScreen(),
    ReportScreen(),
    AddScreen(),
    SettingsScreen(),
  ];

  void onSelectedItem(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text(pages[selectedIndex].title),
        ),
        body: pages[selectedIndex],
        bottomNavigationBar: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: GNav(
              backgroundColor: Colors.black,
              tabBackgroundColor: const Color.fromARGB(66, 255, 255, 255),
              activeColor: Colors.white,
              gap: 6,
              color: const Color.fromARGB(179, 255, 255, 255),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              tabs: const [
                GButton(
                  icon: Icons.paid,
                  text: "Expenses",
                ),
                GButton(
                  icon: Icons.bar_chart,
                  text: "Reports",
                ),
                GButton(
                  icon: Icons.add,
                  text: "Add",
                ),
                GButton(
                  icon: Icons.settings,
                  text: "Settings",
                ),
              ],
              selectedIndex: selectedIndex,
              onTabChange: onSelectedItem,
            ),
          ),
        ));
  }
}
