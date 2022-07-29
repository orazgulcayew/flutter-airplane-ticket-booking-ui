import 'package:book_airplane_ticket/screens/bottom_navigation/bottom_navigation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AirplaneTicketApp());
}

class AirplaneTicketApp extends StatelessWidget {
  const AirplaneTicketApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Poppins',
          useMaterial3: true,
          brightness: Brightness.dark,
          colorSchemeSeed: Colors.green),
      home: BottomBar(),
    );
  }
}
