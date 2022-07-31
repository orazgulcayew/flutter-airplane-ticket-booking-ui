import 'package:book_airplane_ticket/utils/screen_sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
        body: Stack(
      children: [
        ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            const Gap(40),
            Text(
              "Biletler",
              style:
                  textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            )
          ],
        )
      ],
    ));
  }
}
