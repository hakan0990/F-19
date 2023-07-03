import 'package:bookshop/screens/loginscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'İris',
      theme: ThemeData.dark().copyWith(
        buttonTheme: ButtonThemeData(buttonColor: Colors.pink)
      ),
      home: loginScreen(),
    );
  }
}

