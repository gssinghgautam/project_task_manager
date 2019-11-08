import 'package:flutter/material.dart';
import 'package:project_task_manager/screens/home/desktop/home_desktop_content.dart';
import 'package:project_task_manager/screens/home/mobile/home_mobile_content.dart';
import 'package:project_task_manager/screens/home/tablet/home_table_content.dart';
import 'package:project_task_manager/utils/app_color.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInfo) {
        return Scaffold(
          backgroundColor: BACKGROUND_COLOR,
          body: ScreenTypeLayout(
            mobile: HomeMobileContent(sizingInfo: sizingInfo,),
            desktop: HomeDesktopContent(sizingInfo: sizingInfo,),
            tablet: HomeTableContent(sizingInfo: sizingInfo,),
          ),
        );
      },
    );
  }
}
