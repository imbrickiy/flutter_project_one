import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({super.key});

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.teal,
          title: const Text('Tabbar'),
        ),
        body: DefaultTabController(
          length: 3,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                // Tab 1
                Container(
                  margin: const EdgeInsets.all(8.0),
                  constraints: const BoxConstraints(maxHeight: 150.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 2,
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                    child: TabBar(
                      labelPadding: const EdgeInsets.all(16.0),
                      labelColor: Colors.tealAccent[400],
                      labelStyle: const TextStyle(fontSize: 16),
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Colors.transparent,
                      tabs: tabs,
                    ),
                  ),
                ),

                // Tab 2
                Container(
                  margin: const EdgeInsets.all(8.0),
                  constraints: const BoxConstraints(maxHeight: 150.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 2,
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                    child: TabBar(
                      labelPadding: const EdgeInsets.all(16.0),
                      labelColor: Colors.white,
                      labelStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      unselectedLabelColor: Colors.grey,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.tealAccent[700],
                      ),
                      tabs: tabs,
                    ),
                  ),
                ),

                // Tab 3
                Container(
                  margin: const EdgeInsets.all(8.0),
                  constraints: const BoxConstraints(maxHeight: 150.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 2,
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                    child: TabBar(
                      labelPadding: const EdgeInsets.all(16.0),
                      indicatorWeight: 4.0,
                      indicatorColor: Colors.tealAccent[700],
                      labelColor: Colors.tealAccent[700],
                      labelStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      unselectedLabelColor: Colors.grey,
                      tabs: tabs,
                    ),
                  ),
                ),

                // Tab 4
                Container(
                  margin: const EdgeInsets.all(8.0),
                  constraints: const BoxConstraints(maxHeight: 150.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 2,
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                    child: TabBar(
                      labelPadding: const EdgeInsets.all(16.0),
                      labelColor: Colors.tealAccent[700],
                      labelStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      unselectedLabelColor: Colors.grey,
                      indicator: const BoxDecoration(
                        border: Border(
                          top: BorderSide(width: 4.0, color: Colors.teal),
                        ),
                      ),
                      tabs: tabs,
                    ),
                  ),
                ),

                // Tab 5
                Container(
                  margin: const EdgeInsets.all(8.0),
                  constraints: const BoxConstraints(maxHeight: 150.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 2,
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                    child: TabBar(
                      padding: const EdgeInsets.all(14.0),
                      labelPadding: const EdgeInsets.all(2.0),
                      labelColor: Colors.white,
                      labelStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      unselectedLabelColor: Colors.grey,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.tealAccent[700],
                      ),
                      tabs: tabs,
                    ),
                  ),
                ),

                // Tab 6
                Container(
                  margin: const EdgeInsets.all(8.0),
                  constraints: const BoxConstraints(maxHeight: 150.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 2,
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                    child: TabBar(
                      padding: const EdgeInsets.all(14.0),
                      labelPadding: const EdgeInsets.all(2.0),
                      labelColor: Colors.teal,
                      labelStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      unselectedLabelColor: Colors.grey,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.tealAccent[100],
                      ),
                      tabs: tabs,
                    ),
                  ),
                ),

                // Tab 7
                Container(
                  margin: const EdgeInsets.all(8.0),
                  constraints: const BoxConstraints(maxHeight: 150.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey[200],
                    child: TabBar(
                      labelPadding: const EdgeInsets.all(14.0),
                      labelColor: Colors.black,
                      labelStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      unselectedLabelColor: Colors.grey[600],
                      indicator: const BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          top: BorderSide(width: 4.0, color: Colors.teal),
                        ),
                      ),
                      tabs: tabs,
                    ),
                  ),
                ),

                // Tab 8
                Container(
                  margin: const EdgeInsets.all(8.0),
                  constraints: const BoxConstraints(maxHeight: 150.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey[200],
                    child: TabBar(
                      padding: const EdgeInsets.all(14.0),
                      labelPadding: const EdgeInsets.all(2.0),
                      labelColor: Colors.teal,
                      labelStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      unselectedLabelColor: Colors.grey,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                      ),
                      tabs: tabs,
                    ),
                  ),
                ),

                // Tab 9
                Container(
                  margin: const EdgeInsets.all(8.0),
                  constraints: const BoxConstraints(maxHeight: 150.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(color: Colors.grey, width: 2.0),
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                    child: TabBar(
                      padding: const EdgeInsets.all(14.0),
                      labelPadding: const EdgeInsets.all(2.0),
                      labelColor: Colors.white,
                      labelStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      unselectedLabelColor: Colors.grey,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.teal,
                      ),
                      tabs: tabs,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> get tabs {
    return const [Tab(text: 'Home'), Tab(text: 'Shop'), Tab(text: 'Cart')];
  }
}
