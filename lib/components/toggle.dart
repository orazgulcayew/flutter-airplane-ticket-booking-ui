import 'package:book_airplane_ticket/utils/screen_sizes.dart';
import 'package:flutter/material.dart';
import 'package:book_airplane_ticket/utils/styles.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class ToggleTab extends StatefulWidget {
  const ToggleTab({Key? key}) : super(key: key);

  @override
  State<ToggleTab> createState() => ToggleTabState();
}

class ToggleTabState extends State<ToggleTab> {
  List<bool> isSelected = [true, false];
  List<bool> isIconVisible = [true, false];

  void changeToggleIndex(int index) {
    setState(() {
      for (int buttonIndex = 0;
          buttonIndex < isSelected.length;
          buttonIndex++) {
        if (buttonIndex == index) {
          isSelected[buttonIndex] = true;
          isIconVisible[buttonIndex] = true;
        } else {
          isSelected[buttonIndex] = false;
          isIconVisible[buttonIndex] = false;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = AppScreenSizes.getScreenSize(context);
    ColorScheme theme = Provider.of<ThemeProvider>(context).theme;

    return ToggleButtons(
      borderRadius: const BorderRadius.all(Radius.circular(48)),
      borderColor: theme.outline,
      isSelected: isSelected,
      color: theme.onSurface,
      disabledBorderColor: theme.outline,
      selectedColor: theme.onSecondaryContainer,
      selectedBorderColor: theme.outline,
      onPressed: (index) {
        changeToggleIndex(index);
      },
      children: [
        SizedBox(
            width: size.width * 0.45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Visibility(
                  maintainAnimation: true,
                  maintainState: true,
                  visible: isIconVisible[0],
                  child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 200),
                      opacity: isIconVisible[0] ? 1 : 0,
                      child: const Icon(Icons.check)),
                ),
                const Gap(4),
                const Text("Biletler"),
              ],
            )),
        SizedBox(
            width: size.width * 0.45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Visibility(
                  maintainAnimation: true,
                  maintainState: true,
                  visible: isIconVisible[1],
                  child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 200),
                      opacity: isIconVisible[1] ? 1 : 0,
                      child: const Icon(Icons.check)),
                ),
                const Gap(4),
                const Text("Myhmanhanalar"),
              ],
            )),
      ],
    );
  }
}
