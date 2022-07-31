import 'package:book_airplane_ticket/components/toggle.dart';
import 'package:book_airplane_ticket/utils/screen_sizes.dart';
import 'package:book_airplane_ticket/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppScreenSizes.getScreenSize(context);

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        children: [
          const Gap(24),
          Text(
            "Näme gözleýärsiňiz?",
            style: Theme.of(context).textTheme.headline6,
          ),
          const Gap(16),
          const Center(child: ToggleTab()),
        ],
      ),
    );
  }
}
