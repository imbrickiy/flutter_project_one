import 'package:flutter/material.dart';

class DiscordLogIn extends StatefulWidget {
  const DiscordLogIn({super.key});

  @override
  State<DiscordLogIn> createState() => _DiscordLogInState();
}

class _DiscordLogInState extends State<DiscordLogIn> {
  bool isPrefixTextEnabled = false;
  bool isSuffixIconEnabled = false;
  bool isPasswordVisible = false;

  bool isInputTextNumber = false;

  final emailOrPhoneNumberController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool checkInputText(String inputText) => RegExp(
    r'^([0-9]{3,9})+$|([A-Za-z0-9._%\+\-]+@[a-z0-9.\-]+\.[a-z]\s)+$',
  ).hasMatch(inputText);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // height: MediaQuery.of(context).size.height,
        // width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(18, 90, 18, 18),
        decoration: const BoxDecoration(color: Color(0XFF2f3136)),
        child: Column(
          children: [
            const Text(
              'Welcome back!',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'We\'re so excited to see you again!',
              style: TextStyle(fontSize: 12, color: Color(0xFFb9bbbe)),
            ),
            const SizedBox(height: 30),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'ACCOUNT INFORMATION',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFb9bbbe),
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: emailOrPhoneNumberController,
                    onChanged: (value) {
                      emailOrPhoneNumberController.text.isNotEmpty
                          ? setState(() => isSuffixIconEnabled = true)
                          : setState(() => isSuffixIconEnabled = false);

                      checkInputText(value)
                          ? setState(() => isPrefixTextEnabled = true)
                          : setState(() => isPrefixTextEnabled = false);
                    },
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This field is required';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Email or Phone Number',
                      hintStyle: const TextStyle(
                        color: Color(0XFFdcddde),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      filled: true,
                      fillColor: const Color(0XFF202225),
                      errorStyle: const TextStyle(color: Color(0XFFf38588)),
                      errorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(color: Color(0xffed4245)),
                      ),
                      focusedErrorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(color: Color(0xffed4245)),
                      ),
                      prefix:
                          isPrefixTextEnabled
                              ? Container(
                                margin: const EdgeInsets.only(right: 8),
                                decoration: const BoxDecoration(
                                  border: Border(
                                    right: BorderSide(color: Colors.white),
                                  ),
                                ),
                                child: const Text(
                                  'IN +91 ',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                              : const SizedBox(),
                      suffixIcon:
                          isSuffixIconEnabled
                              ? IconButton(
                                icon: const Icon(Icons.cancel),
                                color: const Color(0XFFdcddde),
                                iconSize: 24,
                                onPressed: () {
                                  setState(() {
                                    emailOrPhoneNumberController.clear();
                                    isPrefixTextEnabled = false;
                                    isSuffixIconEnabled = false;
                                  });
                                },
                              )
                              : const SizedBox(),
                      prefixStyle: const TextStyle(color: Colors.white),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: passwordController,
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                    obscureText: !isPasswordVisible,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This field is required';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: const TextStyle(
                        color: Color(0XFFdcddde),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      filled: true,
                      fillColor: const Color(0XFF202225),
                      errorStyle: const TextStyle(color: Color(0XFFf38588)),
                      errorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(color: Color(0xffed4245)),
                      ),
                      focusedErrorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(color: Color(0xffed4245)),
                      ),
                      suffixIcon: IconButton(
                        onPressed:
                            () => setState(
                              () => isPasswordVisible = !isPasswordVisible,
                            ),
                        icon: Icon(
                          !isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        color: const Color(0XFFdcddde),
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Forgot your password?',
                    style: TextStyle(fontSize: 11, color: Color(0xFF02aff4)),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        _formKey.currentState!.validate();
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          const Color(0xff5765f2),
                        ),
                      ),
                      child: const Text(
                        'Log In',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
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
