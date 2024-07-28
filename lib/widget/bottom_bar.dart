import 'package:flutter/material.dart';
import 'package:myfinance/pages/home.dart';
import 'package:myfinance/pages/input.dart';
import 'package:myfinance/pages/report.dart';
import 'package:myfinance/pages/category.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const Home(),
    const Input(),
    const Report(),
    const Categorys(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: NavigationBar(
        indicatorColor: Colors.grey[300],
        backgroundColor: Colors.grey[100],
        height: 60,
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(
              Icons.home,
            ),
            icon: Icon(Icons.home_outlined),
            label: 'Beranda',
          ),
          NavigationDestination(
              selectedIcon: Icon(
                Icons.view_agenda,
              ),
              icon: Icon(
                Icons.view_agenda_outlined,
              ),
              label: 'Input Data'),
          NavigationDestination(
              selectedIcon: Icon(
                Icons.account_balance,
              ),
              icon: Icon(Icons.account_balance_outlined),
              label: 'Laporan'),
          NavigationDestination(
              selectedIcon: Icon(
                Icons.category,
              ),
              icon: Icon(Icons.category_outlined),
              label: 'Kategori'),
        ],
      ),
    );
  }
}
