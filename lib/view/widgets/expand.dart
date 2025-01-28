import 'package:bookmyticket/utils/theme.dart';
import 'package:flutter/material.dart';

class Expand extends StatelessWidget {
  final String event;
  final VoidCallback expand;
  const Expand({super.key, required this.event, required this.expand});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          event,
          style: AppTheme.heading,
        ),
        TextButton(
          onPressed: expand,
          child: Text(
            "view all",
            style: AppTheme.footer.copyWith(fontSize: 15),
          ),
        )
      ],
    );
  }
}
