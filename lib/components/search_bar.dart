import 'package:book_airplane_ticket/components/glass_effect.dart';
import 'package:book_airplane_ticket/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorScheme theme = Provider.of<ThemeProvider>(context).theme;

    return GlassEffect(
      topLeft: 12,
      topRight: 12,
      bottomLeft: 12,
      bottomRight: 12,
      child: TextField(
        style: const TextStyle(fontSize: 16, color: Colors.white),
        cursorColor: theme.tertiary,
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(16),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            prefixIcon: const Padding(
              padding: EdgeInsets.only(left: 12, right: 12),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            hintText: "Gözle...",
            hintStyle: TextStyle(color: Colors.grey.shade300),
            filled: true,
            fillColor: Colors.white.withOpacity(0.2)),
      ),
    );
  }
}
