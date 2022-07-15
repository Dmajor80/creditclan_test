import 'package:creditclan_test/home/home_view.dart';
import 'package:flutter/material.dart';

class AppHomeView extends StatefulWidget {
  const AppHomeView({Key? key}) : super(key: key);

  @override
  State<AppHomeView> createState() => _AppHomeViewState();
}

class _AppHomeViewState extends State<AppHomeView> {
  int _selectedIndex = 0;
  void _onPageChanged(int index) => setState(() => _selectedIndex = index);
  DateTime timePress = DateTime.now();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.onSurface,
      body: const [
        HomeView(),
        HomeView(),
        HomeView(),
        HomeView(),
        HomeView(),
      ].elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF080C2F),
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_view_day_rounded), label: 'Spend'),
          BottomNavigationBarItem(
              icon: Icon(Icons.wallet_rounded), label: 'Save'),
          BottomNavigationBarItem(
              icon: Icon(Icons.save_rounded), label: 'Borrow'),
          BottomNavigationBarItem(icon: Icon(Icons.more), label: 'More'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onPageChanged,
      ),
      // ),
    );
  }
}
