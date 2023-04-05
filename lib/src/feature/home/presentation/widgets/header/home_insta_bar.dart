import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({ super.key });

  @override
  State<CustomNavigationBar> createState() => _NavigationBar();
}

class _NavigationBar extends State<CustomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Colors.black,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.business), label: ''),
      ],
      currentIndex: _selectedIndex,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.blueAccent,
      onTap: _onItemTapped,
    );
  }
}

//top bar component
class InstaBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(25.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      flexibleSpace: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: 1, color: Colors.grey.shade900))
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.camera_alt_outlined, color: Colors.white),
                Text('Instagram',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 21
                  ),
                ),
                Icon(Icons.camera_alt_outlined, color: Colors.white),
              ],
            ),
          ),
        ),
      ),
    );
  }
}