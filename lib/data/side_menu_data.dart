


import 'package:flutter/material.dart';
import 'package:responcive_dashboard_ui/model/MenuModel.dart';

class SideMenuData {
  final menu = <MenuModel>[
    MenuModel(icon: Icons.home, title: "Dashboard"),
    MenuModel(icon: Icons.person, title: "Profile"),
    MenuModel(icon: Icons.run_circle, title: "Exersice"),
    MenuModel(icon: Icons.settings, title: "Setting"),
    MenuModel(icon: Icons.history, title: "History"),
    MenuModel(icon: Icons.logout, title: "Logout"),
  ];
}