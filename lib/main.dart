import 'package:book_airplane_ticket/screens/bottom_navigation/bottom_navigation.dart';
import 'package:book_airplane_ticket/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const AirplaneTicketApp());
}

class AirplaneTicketApp extends StatelessWidget {
  const AirplaneTicketApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Poppins',
            useMaterial3: true,
            brightness: themeProvider.brightness,
            colorSchemeSeed: Colors.green,
          ),
          home: BottomBar(),
        );
      },
    );
  }
}
