import 'package:flutter/material.dart';
import 'package:responcive_dashboard_ui/const/constant.dart';
import 'package:responcive_dashboard_ui/widgets/pie_chart_widget.dart';
import 'package:responcive_dashboard_ui/widgets/scheduled_widget.dart';
import 'package:responcive_dashboard_ui/widgets/summery_details_widget.dart';

class SummeryWidget extends StatelessWidget {
  const SummeryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        children: [
          SizedBox(height: 20,),
          Chart(),
          Text(
            'Summary',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SummeryDetails(),
          ),
          SizedBox(height: 40),
          Scheduled()
        ],
      ),
    );
  }
}
