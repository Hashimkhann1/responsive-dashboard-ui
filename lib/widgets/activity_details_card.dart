

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responcive_dashboard_ui/data/health_data.dart';
import 'package:responcive_dashboard_ui/util/responsive.dart';
import 'package:responcive_dashboard_ui/widgets/custom_card_widget.dart';

class ActivityDetailsCard extends StatelessWidget {
  const ActivityDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final healthDetails = HealthDetails();
    return GridView.builder(
      itemCount: healthDetails.healthData.length,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: Responcive.isMobile(context) ? 2 : 4,
          crossAxisSpacing: Responcive.isMobile(context) ? 12 : 15,
          mainAxisSpacing: 12.0
        ),
        itemBuilder: (context , index) => CustomCardWidget(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(healthDetails.healthData[index].icon,width: 30,height: 30,),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0,bottom: 4),
                  child: Text(
                      healthDetails.healthData[index].value,
                    style: TextStyle(
                      fontSize: 18,
                        color: Colors.white,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),
                Text(
                  healthDetails.healthData[index].title,
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal
                  ),
                ),
              ],
            ),
          ),

        )
    );
  }
}
