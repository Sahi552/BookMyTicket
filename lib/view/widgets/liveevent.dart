import 'package:bookmyticket/view/widgets/customclippath.dart';
import 'package:flutter/material.dart';

class Liveevent extends StatelessWidget {
  final String image;
  const Liveevent({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      width: 400,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 220,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
              ),
            ),
          ),
          Positioned(
            right: 10,
            top: 15,
            child: Container(
              width: 100,
              height: 31,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Jan 25, 2025",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
                ),
              ),
            ),
          ),
          Positioned(bottom: 0, child: Customclippath()),
          Positioned(
            right: 10,
            bottom: 15,
            child: Container(
              width: 130,
              height: 55,
              decoration: BoxDecoration(
                color: Color(0xff1CA672),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  "Book now",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 15,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Abhishek Upmanyu LIVE",
                  style: TextStyle(
                      color: Color(0xff282828),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "SITRA Auditorium, Coimbatore.",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 10,
                      fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
