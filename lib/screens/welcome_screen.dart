import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<WelcomeScreen> {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Form(
            child: Column(
              children: [
                const SizedBox(height: 50),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    floatingLabelStyle: Theme.of(context).textTheme.titleLarge,
                    icon: Icon(
                      Icons.email,
                      color: Theme.of(context).primaryColor,
                    ),
                    labelText: 'Email',
                  ),
                ),
                TextFormField(),
                TextFormField(),
                ElevatedButton(onPressed: () {}, child: const Text('Register')),
                InkWell(onTap: () {}, child: const Text('Login instead')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
