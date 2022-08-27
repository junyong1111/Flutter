import 'package:flutter/material.dart';
import 'package:flutter_yolo/Components/timer.dart';

DateTime now = DateTime.now();
String convertedDateTime =
    "${now.year.toString()}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')} ${now.hour.toString()}-${now.minute.toString()}";

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildFireAppBar(context),
      body: ListView(
        children: [
          SizedBox(height: 15),
          Text(
            "화재 지속 시간",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Color(0xffE26A2C),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          // Text(
          //   convertedDateTime,
          //   style: TextStyle(
          //     fontWeight: FontWeight.bold,
          //     fontSize: 20,
          //     color: Color(0xffE26A2C),
          //   ),
          //   textAlign: TextAlign.center,
          // ),
          FireTimer(),
        ],
      ),
    );
  }
}

AppBar _buildFireAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Color(0xffE26A2C),
    leading: IconButton(
      onPressed: () {
        Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false);
      },
      icon: Icon(Icons.home_rounded, size: 35),
    ),
    title: Text(
      "         HomePage",
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        wordSpacing: 20,
      ),
    ),
  );
}
