import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 249, 242, 242),
              Color.fromARGB(255, 72, 197, 255),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Phone number',
                      labelStyle: const TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                      hintText: 'Enter your phone number',
                      hintStyle: const TextStyle(
                        fontSize: 14,
                        color: Colors.black38,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 2,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 2,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 2,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 2,
                        ),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 20,
                      ),
                      prefixIcon: const Icon(Icons.phone, color: Colors.blue),
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.clear, color: Colors.blue),
                        onPressed: () {
                          // Handle clear action
                        },
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      isDense: true,

                      counterStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 12,
                      ),
                      counterText: '0/10',
                      counter: const Text(
                        '0/10',
                        style: TextStyle(color: Colors.black54, fontSize: 12),
                      ),
                      prefixText: '+7 ',
                      prefixStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                      ),
                      suffixText: 'SMS',
                      suffixStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Handle login action
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 20,
                      ),
                      elevation: 5,
                      shadowColor: Colors.black.withOpacity(0.2),
                      side: const BorderSide(color: Colors.blue, width: 2),
                      visualDensity: VisualDensity.adaptivePlatformDensity,
                    ),
                    child: const Text('Login'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
