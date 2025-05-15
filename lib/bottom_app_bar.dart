import 'package:flutter/material.dart';

class BottomAppBarDemo extends StatefulWidget {
  const BottomAppBarDemo({super.key});

  @override
  State<BottomAppBarDemo> createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Index 0: Home', style: optionStyle),
    Text('Index 1: Business', style: optionStyle),
    Text('Index 2: School', style: optionStyle),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        title: const Text('Bottom App Bar Demo'),
        elevation: 10,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        surfaceTintColor: const Color(0xFF2196F3),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Handle settings action
            },
          ),
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              // Handle info action
            },
          ),
          IconButton(
            icon: const Icon(Icons.help),
            onPressed: () {
              // Handle help action
            },
          ),
        ],
      ),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40.0),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            selectedIconTheme: const IconThemeData(color: Colors.blue),
            unselectedIconTheme: const IconThemeData(
              color: Color.fromARGB(255, 121, 82, 82),
            ),
            selectedLabelStyle: const TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelStyle: const TextStyle(
              color: Color.fromARGB(55, 96, 125, 139),
              fontWeight: FontWeight.normal,
            ),
            selectedFontSize: 16,
            unselectedFontSize: 14,
            iconSize: 30,
            elevation: 10,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: 'Business',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'School',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.blue[800],
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
