
import 'package:flutter/material.dart';
import 'package:responcive_dashboard_ui/const/constant.dart';
import 'package:responcive_dashboard_ui/data/side_menu_data.dart';

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final data = SideMenuData();
    return Container(
      color: backgroundColor,
      padding: EdgeInsets.symmetric(vertical: 80,horizontal: 20),
      child: ListView.builder(
        itemCount: data.menu.length,
          itemBuilder: (context , index) => buildMenuEntry(data , index)),
    );
  }

  Widget buildMenuEntry(SideMenuData data , int index) {
    final isSelected = selectedIndex == index;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        color: isSelected ?  selectionColor : Colors.transparent,
      ),
      child: InkWell(
        onTap: (){
          setState(() {
            selectedIndex = index;
          });
        },
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13.0,vertical: 7.0),
              child: Icon(data.menu[index].icon,color: isSelected ? Colors.black : Colors.grey,),
            ),
            Text(
              data.menu[index].title.toString(),
              style: TextStyle(
                fontSize: 16,
                  color: isSelected ? Colors.black : Colors.grey,
                fontWeight: FontWeight.normal
              ),
            )
          ],
        ),
      ),
    );
  }
}
