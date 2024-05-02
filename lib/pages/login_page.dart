import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:swaad/components/my_button.dart';
import 'package:swaad/components/my_textfield.dart';
import 'package:swaad/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

//login method

  void login() {
    //fill out authentication
    //navigate to home page
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

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
            "Food Delivery App",
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
          ), // password textfiled
          MyTextField(
              controller: passwordController,
              hintText: "Password",
              obscureText: true),

          const SizedBox(
            height: 10,
          ),
          //sign in button
          MyButton(onTap: login, text: "Sign In"),

          const SizedBox(
            height: 10,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Not a member?",
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
                  "Register Now",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          )
          //not a member? register now
        ],
      ),
    );
  }
}
