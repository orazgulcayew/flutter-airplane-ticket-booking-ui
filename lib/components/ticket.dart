import 'package:book_airplane_ticket/components/circle_container.dart';
import 'package:book_airplane_ticket/components/glass_effect.dart';
import 'package:book_airplane_ticket/utils/screen_sizes.dart';
import 'package:book_airplane_ticket/utils/styles.dart';
import 'package:book_airplane_ticket/utils/ticket_clipper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AirplaneTicket extends StatelessWidget {
  final Map<String, dynamic> ticket;

  const AirplaneTicket({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    final size = AppScreenSizes.getScreenSize(context);
    return SizedBox(
      width: size.width * 0.90,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 12),
        child: Column(
          children: [
            GlassEffect(
              topLeft: 24,
              topRight: 24,
              child: Container(
                decoration: BoxDecoration(
                  color: theme.primaryContainer.withOpacity(0.3),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          ticket['from']['code'],
                          style: textTheme.bodyLarge
                              ?.copyWith(color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        const CircleContainer(),
                        Expanded(
                          child: Stack(
                            children: [
                              SizedBox(
                                height: 24,
                                child: LayoutBuilder(
                                  builder: (BuildContext context,
                                      BoxConstraints constraints) {
                                    return Flex(
                                      direction: Axis.horizontal,
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: List.generate(
                                          (constraints.constrainWidth() / 6)
                                              .floor(),
                                          (index) => const SizedBox(
                                              width: 4,
                                              height: 2,
                                              child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                    color: Colors.white),
                                              ))),
                                    );
                                  },
                                ),
                              ),
                              const Center(
                                child: Icon(
                                  CupertinoIcons.airplane,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const CircleContainer(),
                        Expanded(child: Container()),
                        Text(
                          ticket['destination']['code'],
                          style: textTheme.bodyLarge
                              ?.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    const Gap(4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 100,
                            child: Text(ticket['from']['name'],
                                style: textTheme.bodyMedium
                                    ?.copyWith(color: Colors.white))),
                        Text(ticket['departure_time'],
                            style: textTheme.bodyMedium?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 100,
                          child: Text(
                            ticket['destination']['name'],
                            textAlign: TextAlign.end,
                            style: textTheme.bodyMedium
                                ?.copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            ClipPath(
              clipper: TicketClipper(holeRadius: 24, bottom: 0),
              child: GlassEffect(
                child: Container(
                  height: 24,
                  color: theme.tertiaryContainer.withOpacity(0.3),
                  child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                            (constraints.constrainWidth() / 15).floor(),
                            (index) => const SizedBox(
                                width: 6,
                                height: 1,
                                child: DecoratedBox(
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                ))),
                      );
                    },
                  ),
                ),
              ),
            ),
            GlassEffect(
                bottomLeft: 24,
                bottomRight: 24,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  color: theme.tertiaryContainer.withOpacity(0.3),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ticket['date'],
                                style: textTheme.bodyLarge?.copyWith(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white),
                              ),
                              const Gap(6),
                              Text(
                                "Sene",
                                style: textTheme.bodyMedium
                                    ?.copyWith(color: Colors.white),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                ticket['flying_time'],
                                style: textTheme.bodyMedium
                                    ?.copyWith(color: Colors.white),
                              ),
                              const Gap(6),
                              Text(
                                "Uçuş wagty",
                                style: textTheme.bodyMedium
                                    ?.copyWith(color: Colors.white),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                ticket['airplane_code'],
                                style: textTheme.bodyLarge
                                    ?.copyWith(color: Colors.white),
                              ),
                              const Gap(6),
                              Text(
                                "Uçar belgi",
                                style: textTheme.bodyMedium
                                    ?.copyWith(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
