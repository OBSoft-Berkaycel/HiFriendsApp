import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:myapp/styles/custom_theme.dart';

class Master extends StatefulWidget {
  const Master({Key? key}) : super(key: key);

  @override
  State<Master> createState() => _MasterState();
}

class _MasterState extends State<Master> {
  int _selectedIndex = 0;
  void onClicked(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: const Center(
        child: CustomSubTitleText(text: 'Hello World!'),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        onItemSelected: (index) => setState(() => _selectedIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: const Icon(Icons.home),
            title: const Text("Home"),
            activeColor: Colors.amber,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.notifications),
            title: const Text("Notifications"),
            activeColor: Colors.amber,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.chat),
            title: const Text("Chats"),
            activeColor: Colors.amber,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.person),
            title: const Text("Profile"),
            activeColor: Colors.amber,
          )
        ],
      ),
    );
  }
}
