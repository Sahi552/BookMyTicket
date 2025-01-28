import 'package:bookmyticket/utils/theme.dart';
import 'package:flutter/material.dart';

class PopEvents extends StatelessWidget {
  final String image;
  final String concert;
  final String area;
  final String month;
  final int date;
  const PopEvents({
    super.key,
    required this.image,
    required this.concert,
    required this.area,
    required this.month,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              width: 150,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                  image: AssetImage(
                    image,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 18,
              child: Container(
                height: 42,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Text(
                      month,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      date.toString(),
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        Text(
          concert,
          style: AppTheme.heading.copyWith(fontSize: 19),
        ),
        Text(
          area,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
        ),
      ],
    );
  }
}
