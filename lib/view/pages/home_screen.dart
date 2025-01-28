import 'package:bookmyticket/utils/theme.dart';
import 'package:bookmyticket/view/widgets/appbar.dart';
import 'package:bookmyticket/view/widgets/event.dart';
import 'package:bookmyticket/view/widgets/expand.dart';
import 'package:bookmyticket/view/widgets/freeevent.dart';
import 'package:bookmyticket/view/widgets/popular_event.dart';
import 'package:bookmyticket/view/widgets/premium_container.dart';
import 'package:bookmyticket/view/widgets/template.dart';
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
            SizedBox(height: 20),
            Event(),
            SizedBox(height: 20),
            Expand(event: "Popular Event", expand: () {}),
            SizedBox(height: 20),
            PopularEvent(),
            SizedBox(height: 20),
            PremiumContainer(),
            SizedBox(height: 20),
            Expand(event: "Free entry Event", expand: () {}),
            Freeevent(),
          ],
        ),
      ),
    );
  }
}
