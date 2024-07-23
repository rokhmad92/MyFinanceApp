import 'package:flutter/material.dart';
import 'package:myfinance/pages/home.dart';
import 'package:myfinance/pages/input.dart';
import 'package:myfinance/pages/laporan.dart';
import 'package:myfinance/pages/pengaturan.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const Home(),
    const Input(),
    const Laporan(),
    const Pengaturan(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: NavigationBar(
        indicatorColor: Colors.grey[100],
        backgroundColor: Colors.grey[100],
        height: 60,
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        destinations: [
          NavigationDestination(
            selectedIcon: Icon(
              Icons.home,
              color: Theme.of(context).primaryColor,
            ),
            icon: const Icon(Icons.home_outlined),
            label: 'Beranda',
          ),
          NavigationDestination(
              selectedIcon: Icon(
                Icons.view_agenda,
                color: Theme.of(context).primaryColor,
              ),
              icon: const Icon(
                Icons.view_agenda_outlined,
              ),
              label: 'Input Data'),
          NavigationDestination(
              selectedIcon: Icon(
                Icons.account_balance,
                color: Theme.of(context).primaryColor,
              ),
              icon: const Icon(Icons.account_balance_outlined),
              label: 'Laporan'),
          NavigationDestination(
              selectedIcon: Icon(
                Icons.settings,
                color: Theme.of(context).primaryColor,
              ),
              icon: const Icon(Icons.settings_outlined),
              label: 'Pengaturan'),
        ],
      ),
    );
  }
}
