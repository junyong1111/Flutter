import 'package:flutter/material.dart';
import 'package:flutter_login/pages/home_page.dart';
import 'package:flutter_login/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textButtonTheme: TextButtonThemeData(
        //버튼을 만들 때는 styleFrom을 사용하자
        style: TextButton.styleFrom(
          backgroundColor: Colors.black,
          primary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          minimumSize: Size(400, 60),
        ),
      )),
      debugShowCheckedModeBanner: false,
      initialRoute: "/login",
      routes: {
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
      },
    );
  }
}
