import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responcive_dashboard_ui/data/bar_graph_data.dart';
import 'package:responcive_dashboard_ui/model/graphModel.dart';
import 'package:responcive_dashboard_ui/util/responsive.dart';
import 'package:responcive_dashboard_ui/widgets/custom_card_widget.dart';

class BarGraphCard extends StatelessWidget {
  BarGraphCard({super.key});

  @override
  Widget build(BuildContext context) {
    final barGraphData = BarGraphData();
    return GridView.builder(
        itemCount: barGraphData.data.length,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: Responcive.isMobile(context) ? 2 : 3,
          crossAxisSpacing: Responcive.isMobile(context) ? 12 : 15,
          mainAxisSpacing: 12.0,
          childAspectRatio: 5 / 4,
        ),
        itemBuilder: (context, index) {
          return CustomCardWidget(
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      barGraphData.data[index].label.toString(),
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Expanded(
                      child: BarChart(BarChartData(
                          barGroups: _cartGroups(
                              points: barGraphData.data[index].graph,
                              color: barGraphData.data[index].color),
                          borderData: FlBorderData(border: const Border()),
                          gridData: const FlGridData(show: false),
                          titlesData: FlTitlesData(
                            bottomTitles: AxisTitles(
                              sideTitles: SideTitles(
                                showTitles: true,
                                getTitlesWidget: (value, meta) {
                                  return Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      barGraphData.label[value.toInt()],
                                      style: const TextStyle(
                                          fontSize: 11,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  );
                                },
                              ),
                            ),
                            leftTitles: const AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                            topTitles: const AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                            rightTitles: const AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                          ))
                      ))
                ],
              ));
        });
  }

  List<BarChartGroupData> Function(
          {required Color color, required List<GraphModel> points})
      _cartGroups = ({required List<GraphModel> points, required Color color}) {
    return points
        .map((points) => BarChartGroupData(x: points.x.toInt(), barRods: [
              BarChartRodData(
                  toY: points.y,
                  width: 12,
                  color: color.withOpacity(points.y.toInt() > 4 ? 1 : 0.4),
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(3.0),
                      topLeft: Radius.circular(3.0)))
            ]))
        .toList();
  };
}
