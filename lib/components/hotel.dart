import 'package:book_airplane_ticket/components/glass_effect.dart';
import 'package:book_airplane_ticket/utils/screen_sizes.dart';
import 'package:book_airplane_ticket/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';

class HotelContainer extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelContainer({Key? key, required this.hotel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    double rating = hotel['rating'];
    final size = AppScreenSizes.getScreenSize(context);
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: GlassEffect(
        topLeft: 24,
        topRight: 24,
        bottomLeft: 24,
        bottomRight: 24,
        child: Container(
          color: Colors.greenAccent.withOpacity(0.3),
          width: size.width * 0.65,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/${hotel['image']}"),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(8),
                    Text(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      "${hotel['name']}",
                      style: textTheme.bodyLarge,
                    ),
                    const Gap(8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RatingBar.builder(
                          initialRating: rating,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          ignoreGestures: true,
                          itemSize: 16,
                          itemCount: 5,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 4),
                          itemBuilder: (context, _) => const Icon(
                            CupertinoIcons.star_fill,
                            color: Colors.lime,
                          ),
                          onRatingUpdate: (rating) {},
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: Text(
                            "${hotel['reviews']} syn",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: textTheme.bodyMedium
                                ?.copyWith(fontSize: 12, color: Colors.white70),
                          ),
                        ),
                      ],
                    ),
                    const Gap(8),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.location,
                          color: theme.tertiary,
                          size: 20,
                        ),
                        Text(
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          softWrap: false,
                          "${hotel['place']}",
                          style: textTheme.bodySmall
                              ?.copyWith(color: Colors.white70),
                        ),
                        const Spacer(),
                        Text(
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          softWrap: false,
                          "TMT ${hotel['price']}",
                          style: textTheme.bodyMedium?.copyWith(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Gap(8),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
