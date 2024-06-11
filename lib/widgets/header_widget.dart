import 'package:flutter/material.dart';
import 'package:responcive_dashboard_ui/const/constant.dart';
import 'package:responcive_dashboard_ui/util/responsive.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if(!Responcive.isDesktop(context))
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Icon(
                  Icons.menu,
                  color: Colors.grey,
                  size: 25,
                ),
              ),
            ),
          ),
        if(!Responcive.isMobile(context))
          Expanded(
          child: TextField(
                decoration: InputDecoration(
          filled: true,
          fillColor: cardBackgroundColor,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: Theme.of(context).primaryColor),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 5),
          hintText: "Search",
          prefixIcon: Icon(Icons.search,color: Colors.grey,size: 21,)

                ),
              ),
        ),
        if(Responcive.isMobile(context))
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.search)),
              InkWell(
                onTap: Scaffold.of(context).openEndDrawer,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/profile.jpg',),
                      fit: BoxFit.cover
                    )
                  ),
                ),
              )
            ],
          )
      ],
    );
  }
}
