import 'package:flutter/material.dart';
//import 'package:mid_solu/page/home_page.dart';
import 'package:mid_solu/page/login/login_page.dart';

//entry piont
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const LoginPage(),
    );
  }
}

