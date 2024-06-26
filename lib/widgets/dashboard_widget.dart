

import 'package:flutter/material.dart';
import 'package:responcive_dashboard_ui/util/responsive.dart';
import 'package:responcive_dashboard_ui/widgets/activity_details_card.dart';
import 'package:responcive_dashboard_ui/widgets/bar_graph_widget.dart';
import 'package:responcive_dashboard_ui/widgets/header_widget.dart';
import 'package:responcive_dashboard_ui/widgets/line_chart_card.dart';
import 'package:responcive_dashboard_ui/widgets/summery_widget.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        
        child: Column(
          children: [
            SizedBox(height: 18,),
            HeaderWidget(),
            SizedBox(height: 18,),
            ActivityDetailsCard(),
            SizedBox(height: 18,),
            LineChartCard(),
            SizedBox(height: 18,),
            BarGraphCard(),
            SizedBox(height: 18,),
            if(Responcive.isTablet(context))
              SummeryWidget()

          ],
        ),
      ),
    );
  }
}
