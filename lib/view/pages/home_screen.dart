import 'package:bookmyticket/utils/assest.dart';
import 'package:bookmyticket/utils/theme.dart';
import 'package:bookmyticket/view/widgets/appbar.dart';
import 'package:bookmyticket/view/widgets/event.dart';
import 'package:bookmyticket/view/widgets/expand.dart';
import 'package:bookmyticket/view/widgets/freeevent.dart';
import 'package:bookmyticket/view/widgets/popular_event.dart';
import 'package:bookmyticket/view/widgets/premium_container.dart';
import 'package:bookmyticket/view/widgets/template.dart';
import 'package:bookmyticket/view/widgets/watchedevent.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backGroundColor,
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(15.0),
          children: [
            Appbar(),
            SizedBox(
              height: 20,
            ),
            Template(),
            SizedBox(height: 10),
            Text(
              "Events",
              style: AppTheme.heading,
            ),
            SizedBox(height: 10),
            Event(),
            Expand(event: "Popular Event", expand: () {}),
            PopularEvent(),
            SizedBox(height: 20),
            PremiumContainer(),
            SizedBox(height: 20),
            Expand(event: "Free entry Event", expand: () {}),
            Freeevent(),
            SizedBox(height: 20),
            Expand(event: "Watched Event", expand: () {}),
            Watchedevent(),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 140,
                  width: 190,
                  child: Text(
                    "Enjoy it up",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                Container(
                  height: 140,
                  width: 190,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(Assest.end))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
