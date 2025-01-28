import 'package:bookmyticket/utils/assest.dart';
import 'package:bookmyticket/view/widgets/liveevent.dart';
import 'package:bookmyticket/view/widgets/premium_container.dart';
import 'package:bookmyticket/view/widgets/secondary_appbar.dart';
import 'package:bookmyticket/view/widgets/tab.dart';
import 'package:flutter/material.dart';

class LiveEvent extends StatefulWidget {
  const LiveEvent({super.key});

  @override
  State<LiveEvent> createState() => _LiveEventState();
}

class _LiveEventState extends State<LiveEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(15.0),
          scrollDirection: Axis.vertical,
          children: [
            SecondaryAppbar(),
            SizedBox(height: 20),
            TabView(),
            SizedBox(height: 20),
            Liveevent(
              image: Assest.liveevent1,
            ),
            Liveevent(
              image: Assest.liveevent2,
            ),
            Liveevent(
              image: Assest.liveevent3,
            ),
            Liveevent(
              image: Assest.liveevent1,
            ),
            SizedBox(height: 20),
            PremiumContainer()
          ],
        ),
      ),
    );
  }
}
