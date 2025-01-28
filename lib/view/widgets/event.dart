import 'package:flutter/material.dart';

import 'package:bookmyticket/utils/assest.dart';
import 'package:bookmyticket/utils/theme.dart';

class Event extends StatelessWidget {
  const Event({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Events(
              eventImage: Assest.event1,
              eventText: "Comedy \nshows",
              gratient1: Color(0xff9747FF),
              gratient2: Color(0xffAD6FA6),
              gratient3: Color(0xffC67D93),
              offset: Offset(-5, -23),
            ),
            Events(
              eventImage: Assest.event2,
              eventText: "Music \nconcert",
              gratient1: Color(0xff40D169),
              gratient2: Color(0xff6FADA7),
              gratient3: Color(0xff8FDDD0),
              offset: Offset(3, -16),
            ),
            Events(
              eventImage: Assest.event3_2,
              eventText: "DJ \nnights",
              gratient1: Color(0xff9747FF),
              gratient2: Color(0xffAD6FA6),
              gratient3: Color(0xffC67D93),
              offset: Offset(3, -23),
              eventoptional: true,
              optional: Assest.event3_1,
            ),
            Events(
              eventImage: Assest.event2,
              eventText: "Music \nconcert",
              gratient1: Color(0xff40D169),
              gratient2: Color(0xff6FADA7),
              gratient3: Color(0xff8FDDD0),
              offset: Offset(3, -16),
            ),
          ],
        ),
      ),
    );
  }
}

class Events extends StatelessWidget {
  final Color gratient1;
  final Color gratient2;
  final Color gratient3;
  final String eventImage;
  final String eventText;
  final Offset offset;
  final bool? eventoptional;
  final String optional;
  const Events(
      {required this.gratient1,
      required this.gratient2,
      required this.gratient3,
      required this.eventImage,
      required this.eventText,
      super.key,
      required this.offset,
      this.optional = "",
      this.eventoptional = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          fit: StackFit.loose,
          children: [
            Container(
              height: 113,
              width: 107,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  image: eventoptional == false
                      ? null
                      : DecorationImage(image: AssetImage(optional)),
                  gradient: eventoptional == false
                      ? LinearGradient(
                          colors: [gratient1, gratient2, gratient3])
                      : null),
            ),
            Positioned(
              child: Transform.translate(
                offset: offset,
                child: Transform.scale(
                    scale: 1.02,
                    child: Image.asset(
                      eventImage,
                      height: 134,
                    )),
              ),
            ),
          ],
        ),
        Text(
          eventText,
          style: AppTheme.eventText,
        )
      ],
    );
  }
}
