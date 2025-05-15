import 'package:flutter/material.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarPageState createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: const Text('BottomNavigationBar'),
      ),
      floatingActionButton: Transform.rotate(
        angle: 40,
        child: FloatingActionButton(
          onPressed: () {},
          child: Transform.rotate(angle: 40, child: const Icon(Icons.add)),
          backgroundColor: Colors.deepPurpleAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        decoration: boxDecoration(),
        margin: const EdgeInsets.all(12.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(25.0),
          ),
          child: BottomNavigationBar(
            unselectedItemColor: Colors.deepPurple[200],
            selectedItemColor: Colors.deepPurple,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.work_outline_rounded),
                label: 'Portfolio',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.message_rounded),
                label: 'Message',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded),
                label: 'Profile',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ),
      ),
      body: Column(
        children: [
          // Bottom Navigation Bar 1
          Container(
            margin: const EdgeInsets.all(12.0),
            decoration: boxDecoration(),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                unselectedItemColor: Colors.deepPurple[200],
                selectedItemColor: Colors.deepPurple,
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(
                    activeIcon: Container(
                      width: 80.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[50],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.home_rounded),
                          Text(
                            'Home',
                            style: TextStyle(color: Colors.deepPurple),
                          ),
                        ],
                      ),
                    ),
                    icon: const Icon(Icons.home_rounded),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Container(
                      width: 80.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[50],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.work_outline_rounded),
                          Text(
                            'Job',
                            style: TextStyle(color: Colors.deepPurple),
                          ),
                        ],
                      ),
                    ),
                    icon: const Icon(Icons.work_outline_rounded),
                    label: 'Job',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Container(
                      width: 90.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[50],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.chat_bubble_outline_rounded),
                          Text(
                            'Message',
                            style: TextStyle(color: Colors.deepPurple),
                          ),
                        ],
                      ),
                    ),
                    icon: const Icon(Icons.chat_bubble_outline_rounded),
                    label: 'Message',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Container(
                      width: 85.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[50],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.person_rounded),
                          Text(
                            'Profile',
                            style: TextStyle(color: Colors.deepPurple),
                          ),
                        ],
                      ),
                    ),
                    icon: const Icon(Icons.person_rounded),
                    label: 'Profile',
                  ),
                ],
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
              ),
            ),
          ),

          // Bottom Navigation Bar 2
          Container(
            margin: const EdgeInsets.all(12.0),
            decoration: boxDecoration(),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: BottomNavigationBar(
                showUnselectedLabels: true,
                unselectedItemColor: Colors.deepPurple[100],
                selectedItemColor: Colors.deepPurple,
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(
                    activeIcon: Column(
                      children: [
                        selectedDot(),
                        const Icon(Icons.home_outlined),
                      ],
                    ),
                    icon: const Icon(Icons.home_outlined),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Column(
                      children: [
                        selectedDot(),
                        const Icon(Icons.work_outline_outlined),
                      ],
                    ),
                    icon: const Icon(Icons.work_outline_outlined),
                    label: 'Job',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Column(
                      children: [
                        selectedDot(),
                        const Icon(Icons.chat_bubble_outline_outlined),
                      ],
                    ),
                    icon: const Icon(Icons.chat_bubble_outline_outlined),
                    label: 'Message',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Column(
                      children: [
                        selectedDot(),
                        const Icon(Icons.person_outline),
                      ],
                    ),
                    icon: const Icon(Icons.person_outline),
                    label: 'Profile',
                  ),
                ],
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
              ),
            ),
          ),

          // Bottom Navigation Bar 3
          Container(
            margin: const EdgeInsets.all(12.0),
            decoration: boxDecoration(),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: BottomNavigationBar(
                unselectedItemColor: Colors.deepPurple[100],
                selectedItemColor: Colors.deepPurple,
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(
                    activeIcon: Container(
                      child: const Icon(Icons.home_outlined),
                      decoration: selectedTopBorder(),
                    ),
                    icon: const Icon(Icons.home_outlined),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Container(
                      child: const Icon(Icons.work_outline_outlined),
                      decoration: selectedTopBorder(),
                    ),
                    icon: const Icon(Icons.work_outline_outlined),
                    label: 'Job',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Container(
                      child: const Icon(Icons.chat_bubble_outline),
                      decoration: selectedTopBorder(),
                    ),
                    icon: const Icon(Icons.chat_bubble_outline),
                    label: 'Message',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Container(
                      child: const Icon(Icons.person_outlined),
                      decoration: selectedTopBorder(),
                    ),
                    icon: const Icon(Icons.person_outlined),
                    label: 'Profile',
                  ),
                ],
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
              ),
            ),
          ),

          // Bottom Navigation Bar 4
          Container(
            margin: const EdgeInsets.all(12.0),
            decoration: boxDecoration(),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: BottomNavigationBar(
                unselectedItemColor: Colors.deepPurple[100],
                selectedItemColor: Colors.deepPurple,
                type: BottomNavigationBarType.fixed,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.work_outline_outlined),
                    label: 'Job',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.chat_bubble_outline),
                    label: 'Message',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person_outlined),
                    label: 'Profile',
                  ),
                ],
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
              ),
            ),
          ),

          // Bottom Navigation Bar 5
          Container(
            margin: const EdgeInsets.all(12.0),
            decoration: boxDecoration(),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                unselectedItemColor: Colors.deepPurple[100],
                selectedItemColor: Colors.deepPurple,
                type: BottomNavigationBarType.fixed,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_rounded),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.work_rounded),
                    label: 'Job',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.chat_bubble_rounded),
                    label: 'Message',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person_rounded),
                    label: 'Profile',
                  ),
                ],
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
              ),
            ),
          ),

          // Bottom Navigation Bar 7
          Container(
            margin: const EdgeInsets.all(12.0),
            decoration: boxDecoration(),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                unselectedItemColor: Colors.deepPurple[100],
                selectedItemColor: Colors.deepPurple,
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(
                    activeIcon: Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.deepPurple[50],
                      ),
                      child: const Icon(Icons.home_rounded),
                    ),
                    icon: const Icon(Icons.home_rounded),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.deepPurple[50],
                      ),
                      child: const Icon(Icons.work_rounded),
                    ),
                    icon: const Icon(Icons.work_rounded),
                    label: 'Job',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.deepPurple[50],
                      ),
                      child: const Icon(Icons.chat_bubble_rounded),
                    ),
                    icon: const Icon(Icons.chat_bubble_rounded),
                    label: 'Message',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.deepPurple[50],
                      ),
                      child: const Icon(Icons.person_rounded),
                    ),
                    icon: const Icon(Icons.person_rounded),
                    label: 'Profile',
                  ),
                ],
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
              ),
            ),
          ),
        ],
      ),
    );
  }

  BoxDecoration selectedTopBorder() {
    return const BoxDecoration(
      border: Border(top: BorderSide(width: 2.0, color: Colors.deepPurple)),
    );
  }

  Container selectedDot() {
    return Container(
      width: 5,
      height: 5,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.deepPurpleAccent,
      ),
    );
  }

  BoxDecoration boxDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(40.0),
      boxShadow: [
        BoxShadow(
          color: Colors.deepPurple.withOpacity(0.2),
          spreadRadius: 2,
          blurRadius: 12,
        ),
      ],
    );
  }
}
