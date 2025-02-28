import 'package:bookmyticket/utils/assest.dart';
import 'package:bookmyticket/utils/theme.dart';
import 'package:flutter/material.dart';

class PremiumContainer extends StatelessWidget {
  const PremiumContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xffF68B32),
            Color(0xffF7CAA4),
          ],
        ),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Get Premium",
                  style: AppTheme.eventText.copyWith(fontSize: 14),
                ),
                RichText(
                  text: TextSpan(
                      text: "50% off for every ",
                      style: AppTheme.premiumoffer,
                      children: [
                        TextSpan(
                            text: "ticket's", style: AppTheme.premiumhighlights)
                      ]),
                ),
                SizedBox(height: 4),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xff1CA672),
                      borderRadius: BorderRadius.circular(7)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 5.0),
                      child: Text(
                        "Premium",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage(Assest.premium)),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
