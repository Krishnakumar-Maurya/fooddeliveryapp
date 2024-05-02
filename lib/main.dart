import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swaad/auth/login_or_register_page.dart';
import 'package:swaad/models/restaurant.dart';
import 'package:swaad/pages/login_page.dart';
import 'package:swaad/pages/register_page.dart';
import 'package:swaad/themes/theme_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      //theme provider
      ChangeNotifierProvider(create: (context) => ThemeProvider()),

      //restaurant Provider
      ChangeNotifierProvider(
        create: ((context) => Restaurant()),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
