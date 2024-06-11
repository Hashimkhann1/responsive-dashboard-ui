import 'dart:ui';
import 'package:responcive_dashboard_ui/model/graphModel.dart';


class BarGraphModel {

  final String label;
  final Color color;
  final List<GraphModel> graph;

  BarGraphModel({required this.color,required this.label , required this.graph});

}