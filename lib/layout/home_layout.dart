import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projects/modules/settings/settings_view.dart';
import 'package:projects/modules/tasks_list/tasks_list_view.dart';

class HomeLayoutView extends StatefulWidget {
  HomeLayoutView({super.key});

  static const String routeName = "home_layout";

  @override
  State<HomeLayoutView> createState() => _HomeLayoutViewState();
}

class _HomeLayoutViewState extends State<HomeLayoutView> {
  int selectedIndex = 0;
  List<Widget> Screens = [
    TasksListView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Screens[selectedIndex],
      appBar: AppBar(
        title: Text(
          "To Do List",
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      //backgroundColor: Colors.transparent,
      floatingActionButton: Container(
        padding: EdgeInsets.all(4),
        decoration:
            BoxDecoration(color: Colors.transparent, shape: BoxShape.circle),
        child: FloatingActionButton(
          onPressed: () {},
          tooltip: "Increment",
          child: Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "settings"),
          ],
        ),
      ),
    );
  }
}
