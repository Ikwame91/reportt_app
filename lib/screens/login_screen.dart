// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:report_app/widgets/custom_button.dart';
import 'package:report_app/widgets/textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover),
          ),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 100),
                Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(
                      "assets/images/rokel.png",
                    ),
                  )),
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: const Row(
                    children: [
                      Text(
                        "Please Sign in to continue",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 38),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26),
                    child: MyTextfield(
                      hintText: "Email",
                      prefixIcon: Icon(Icons.email),
                    )),
                const SizedBox(height: 20),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 26),
                    child: MyTextfield(
                      hintText: "password",
                      prefixIcon: Icon(Icons.lock),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Forgot password",
                          style: TextStyle(
                              fontStyle: FontStyle.italic, fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
                Icon(Ionicons.finger_print_outline, size: 35),
                const SizedBox(height: 20),
                CustomButton(
                    text: "Login",
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
