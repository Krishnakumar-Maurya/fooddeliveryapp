import 'package:flutter/material.dart';
import 'package:swaad/components/my_textfield.dart';

import '../components/my_button.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text editing controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //logo
          Icon(
            Icons.lock_open_rounded,
            color: Theme.of(context).colorScheme.inversePrimary,
            size: 100,
          ),

          const SizedBox(
            height: 25,
          ),

          //message , app slogon
          Text(
            "Let's create an account for you",
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          const SizedBox(
            height: 25,
          ),

          //email textfield
          MyTextField(
              controller: emailController,
              hintText: "Email",
              obscureText: false),

          SizedBox(
            height: 10,
          ),

          // password textfiled
          MyTextField(
              controller: passwordController,
              hintText: "Password",
              obscureText: true),

          const SizedBox(
            height: 10,
          ),

// confirm password textfiled
          MyTextField(
              controller: confirmpasswordController,
              hintText: "Confirm Password",
              obscureText: true),

          const SizedBox(
            height: 10,
          ),

          //sign up button
          MyButton(onTap: () {}, text: "Sign Up"),

          const SizedBox(
            height: 10,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already had an account?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
