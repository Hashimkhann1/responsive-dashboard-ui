

import 'package:flutter/material.dart';
import 'package:responcive_dashboard_ui/widgets/custom_card_widget.dart';

class SummeryDetails extends StatelessWidget {
  const SummeryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCardWidget(
      color: Color(0xFF2f353e),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildDetails('Cal', '305'),
            buildDetails('Steps', '10983'),
            buildDetails('Distance', '7km'),
            buildDetails('Sleep', '7hr'),
          ],
        )
    );
  }

  Widget buildDetails(String key , String value) {
    return Column(
      children: [
        Text(
          key,
          style: const TextStyle(fontSize: 11, color: Colors.grey),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
