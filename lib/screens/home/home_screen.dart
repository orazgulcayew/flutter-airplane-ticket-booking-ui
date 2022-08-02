import 'package:book_airplane_ticket/components/glass_effect.dart';
import 'package:book_airplane_ticket/components/hotel.dart';
import 'package:book_airplane_ticket/components/search_bar.dart';
import 'package:book_airplane_ticket/components/ticket.dart';
import 'package:book_airplane_ticket/datas/hotel_list.dart';
import 'package:book_airplane_ticket/datas/ticket_list.dart';
import 'package:book_airplane_ticket/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorScheme theme = Provider.of<ThemeProvider>(context).theme;
    bool isDarkMode = Provider.of<ThemeProvider>(context).isDarkMode;
    String backgroundImage = isDarkMode ? "night" : "dayy";

    TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background_$backgroundImage.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  const Gap(36),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Salam, ertiriňiz haýyr!",
                            style: textTheme.bodyLarge
                                ?.copyWith(color: Colors.white),
                          ),
                          const Gap(4),
                          Text(
                            "Türkmen Howa Ýollary",
                            style: textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      GlassEffect(
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  scale: 5,
                                  image: AssetImage('assets/images/logo.png'))),
                        ),
                      )
                    ],
                  ),
                  const Gap(16),
                  const SearchBar(),
                  const Gap(24),
                  GlassEffect(
                    topLeft: 10,
                    topRight: 10,
                    bottomLeft: 10,
                    bottomRight: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            "Ýakyndaky uçuşlar",
                            style: textTheme.bodyMedium
                                ?.copyWith(color: Colors.white),
                          ),
                        ),
                        GlassEffect(
                          child: Container(
                            color: theme.primaryContainer.withOpacity(0.3),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              child: Row(
                                children: [
                                  Text(
                                    "Ählisini gör",
                                    style: textTheme.bodyMedium
                                        ?.copyWith(color: Colors.white),
                                  ),
                                  const Icon(CupertinoIcons.chevron_forward,
                                      color: Colors.white)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Gap(12),
            SingleChildScrollView(
              padding: const EdgeInsets.only(left: 12),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: ticketList
                    .map((ticket) => AirplaneTicket(ticket: ticket))
                    .toList(),
              ),
            ),
            const Gap(12),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: GlassEffect(
                topLeft: 10,
                topRight: 10,
                bottomLeft: 10,
                bottomRight: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "Myhmanhanalar",
                        style:
                            textTheme.bodyMedium?.copyWith(color: Colors.white),
                      ),
                    ),
                    GlassEffect(
                      child: Container(
                        color: theme.primaryContainer.withOpacity(0.3),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          child: Row(
                            children: [
                              Text(
                                "Ählisini gör",
                                style: textTheme.bodyMedium
                                    ?.copyWith(color: Colors.white),
                              ),
                              const Icon(CupertinoIcons.chevron_forward,
                                  color: Colors.white)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Gap(12),
            SingleChildScrollView(
              padding: const EdgeInsets.only(left: 12),
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: hotelList
                      .map((hotel) => HotelContainer(hotel: hotel))
                      .toList()),
            ),
            const Gap(24)
          ],
        ),
      ),
    );
  }
}
