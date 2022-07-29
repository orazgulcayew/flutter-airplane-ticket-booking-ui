import 'dart:math';
import 'dart:ui';

import 'package:book_airplane_ticket/components/glass_effect.dart';
import 'package:book_airplane_ticket/components/hotel.dart';
import 'package:book_airplane_ticket/components/search_bar.dart';
import 'package:book_airplane_ticket/components/ticket.dart';
import 'package:book_airplane_ticket/datas/hotel_list.dart';
import 'package:book_airplane_ticket/datas/ticket_list.dart';
import 'package:book_airplane_ticket/utils/screen_sizes.dart';
import 'package:book_airplane_ticket/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background1.jpg'),
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
                            style: Styles.headlineStyle3,
                          ),
                          const Gap(4),
                          Text(
                            "Türkmen Howa Ýollary",
                            style: Styles.headlineStyle1,
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
                            style: Styles.headlineStyle4,
                          ),
                        ),
                        GlassEffect(
                          child: Container(
                            color: Colors.greenAccent.withOpacity(0.3),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              child: Row(
                                children: [
                                  Text(
                                    "Ählisini gör",
                                    style: Styles.headlineStyle4
                                        .copyWith(color: Colors.white),
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
                        style: Styles.headlineStyle4,
                      ),
                    ),
                    GlassEffect(
                      child: Container(
                        color: Colors.greenAccent.withOpacity(0.3),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          child: Row(
                            children: [
                              Text(
                                "Ählisini gör",
                                style: Styles.headlineStyle4
                                    .copyWith(color: Colors.white),
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
