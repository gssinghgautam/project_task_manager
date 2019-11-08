import 'package:flutter/material.dart';
import 'package:project_task_manager/navigation_drawer/navigation_drawer.dart';
import 'package:project_task_manager/screens/project_details/desktop/project_details_desktop_content.dart';
import 'package:project_task_manager/screens/project_details/mobile/project_details_mobile_content.dart';
import 'package:project_task_manager/utils/app_color.dart';
import 'package:project_task_manager/utils/flutter_icon.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectDetails extends StatelessWidget {
  ProjectDetails({Key key, this.sizingInfo}) : super(key: key);

  final SizingInformation sizingInfo;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: sizingInfo.deviceScreenType == DeviceScreenType.Mobile
          ? AppBar(
              elevation: 0.0,
              backgroundColor: Colors.white,
              leading: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                child: IconButton(
                  onPressed: () {
                    _scaffoldKey.currentState.openDrawer();
                  },
                  icon: Icon(
                    FlutterIcon.menu,
                    color: Colors.white,
                  ),
                ),
                decoration: BoxDecoration(
                  color: MENU_BUTTON_COLOR,
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: MENU_BUTTON_COLOR,
                  ),
                  onPressed: () {},
                ),
              ],
            )
          : sizingInfo.deviceScreenType == DeviceScreenType.Tablet
              ? AppBar(
                  backgroundColor: Colors.white,
                  elevation: 0,
                )
              : null,
      drawer: sizingInfo.deviceScreenType == DeviceScreenType.Mobile
          ? NavigationDrawer()
          : null,
      body: ScreenTypeLayout(
        mobile: ProjectDetailsMobileContent(),
        desktop: ProjectDetailsDesktopContent(),
      ),
      backgroundColor: Colors.transparent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: MENU_BUTTON_COLOR,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
      ),
    );
  }
}
