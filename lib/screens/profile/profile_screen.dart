import 'package:book_airplane_ticket/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    ColorScheme theme = Provider.of<ThemeProvider>(context).theme;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil"),
      ),
      body: Column(
        children: [
          Container(
            child: Column(
              children: [const Text("Hoş geldiňiz Oraz!")],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: [
                  const Gap(8),
                  ListTile(
                    title: const Text("Maglumatlarym"),
                    iconColor: theme.onSecondaryContainer,
                    trailing: const Icon(CupertinoIcons.chevron_forward),
                    leading: const Icon(CupertinoIcons.person_fill),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text("Ýolagçylar"),
                    trailing: const Icon(CupertinoIcons.chevron_forward),
                    iconColor: theme.onSecondaryContainer,
                    onTap: () {},
                    leading: const Icon(CupertinoIcons.person_2_fill),
                  ),
                  ListTile(
                      title: const Text("Dili saýlamak"),
                      trailing: const Icon(CupertinoIcons.chevron_forward),
                      iconColor: theme.onSecondaryContainer,
                      onTap: () {},
                      leading: const Icon(Icons.language)),
                  ListTile(
                      title: const Text("Garaňky tema"),
                      iconColor: theme.onSecondaryContainer,
                      onTap: () {},
                      trailing: Switch(
                          value: themeProvider.isDarkMode,
                          onChanged: (isOn) {
                            themeProvider.toggleTheme(isOn);
                          }),
                      leading: const Icon(CupertinoIcons.moon_stars_fill)),
                  ListTile(
                    title: const Text("Hasapdan çykmak"),
                    iconColor: theme.onSecondaryContainer,
                    onTap: () {},
                    trailing: const Icon(CupertinoIcons.chevron_forward),
                    leading: const Icon(Icons.logout),
                  ),
                  ListTile(
                    title: const Text("Programma barada"),
                    iconColor: theme.onSecondaryContainer,
                    onTap: () {},
                    trailing: const Icon(CupertinoIcons.chevron_forward),
                    leading: const Icon(CupertinoIcons.info),
                  ),
                  const Gap(8)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
