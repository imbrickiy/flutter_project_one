import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  const TextFieldPage({super.key});

  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: const Text('TextField'),
      ),
      body: textFields(),
    );
  }

  Container textFields() {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // TextField 1
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Username', style: TextStyle(color: Colors.blueGrey)),
                SizedBox(height: 10.0),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your username',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueGrey,
                        width: 2.0,
                      ),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    floatingLabelStyle: TextStyle(color: Colors.blueGrey),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15.0),
            // TextField 2
            Container(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueGrey),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  label: Text('Username'),
                  hintText: 'Enter your username',
                  hintStyle: TextStyle(color: Colors.blueGrey),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  floatingLabelStyle: TextStyle(color: Colors.blueGrey),
                ),
              ),
            ),
            const SizedBox(height: 15.0),
            // TextField 3
            Row(
              children: const [
                Text(
                  'Username',
                  style: TextStyle(color: Colors.blueGrey, fontSize: 14),
                ),
                SizedBox(width: 20.0),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your username',
                      hintStyle: TextStyle(color: Colors.blueGrey),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                          width: 2.0,
                        ),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      floatingLabelStyle: TextStyle(color: Colors.blueGrey),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15.0),
            // TextField 4
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Username', style: TextStyle(color: Colors.blueGrey)),
                SizedBox(height: 10.0),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your username',
                    hintStyle: TextStyle(color: Colors.blueGrey),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueGrey,
                        width: 2.0,
                      ),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    floatingLabelStyle: TextStyle(color: Colors.blueGrey),
                    prefixIcon: Icon(
                      Icons.person_outline_rounded,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15.0),
            // TextField 5
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Username',
                  style: TextStyle(color: Colors.blueGrey),
                ),
                const SizedBox(height: 10.0),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your username',
                    hintStyle: const TextStyle(color: Colors.blueGrey),
                    border: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueGrey,
                        width: 2.0,
                      ),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    floatingLabelStyle: const TextStyle(color: Colors.blueGrey),
                    prefixIcon: Container(
                      width: 50.0,
                      margin: const EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[100],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Icon(
                        Icons.person_outline_rounded,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15.0),
            // TextField 6
            const TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(color: Colors.blueGrey),
                hintText: 'Enter Your Username',
                hintStyle: TextStyle(color: Colors.blueGrey),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey, width: 2.0),
                ),
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                floatingLabelStyle: TextStyle(color: Colors.blueGrey),
              ),
            ),
            const SizedBox(height: 15.0),
            // TextField 7
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(
                  color: Colors.blueGrey[700],
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
                hintText: 'Enter your username',
                hintStyle: const TextStyle(color: Colors.blueGrey),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey, width: 2.0),
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                floatingLabelStyle: const TextStyle(color: Colors.blueGrey),
              ),
            ),
            const SizedBox(height: 15.0),
            // TextField 8
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(
                  color: Colors.blueGrey[700],
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
                hintText: 'Enter your username',
                hintStyle: const TextStyle(color: Colors.blueGrey),
                filled: true,
                fillColor: Colors.blueGrey[100],
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey, width: 2.0),
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                floatingLabelStyle: const TextStyle(color: Colors.blueGrey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
