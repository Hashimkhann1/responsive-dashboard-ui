import 'package:flutter/material.dart';
import 'package:responcive_dashboard_ui/util/responsive.dart';
import 'package:responcive_dashboard_ui/widgets/dashboard_widget.dart';
import 'package:responcive_dashboard_ui/widgets/side_menu_widget.dart';
import 'package:responcive_dashboard_ui/widgets/summery_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final isDesktop = Responcive.isDesktop(context);

    return Scaffold(
      drawer: !isDesktop ? SizedBox(width: 250,child: SideMenuWidget(),) : null,
      endDrawer: Responcive.isMobile(context) ? SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,child: SummeryWidget(),) : null,
      body: SafeArea(
        child: Row(
          children: [
            if(isDesktop)
              Expanded(
                  flex: 2,
                  child: SizedBox(
                    child: SideMenuWidget(),
                  )),
            Expanded(
              flex: 7,
                child: DashboardWidget()),
            if(isDesktop)
              Expanded(
                  flex: 3,
                  child: SummeryWidget()),
          ],
        ),
      ),
    );
  }
}
