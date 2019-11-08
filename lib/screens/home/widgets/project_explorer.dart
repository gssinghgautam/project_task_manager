import 'package:flutter/material.dart';
import 'package:project_task_manager/screens/home/widgets/project_row.dart';
import 'package:project_task_manager/utils/app_color.dart';
import 'package:project_task_manager/utils/flutter_icon.dart';
import 'package:project_task_manager/utils/helper.dart';

class ProjectExplorer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Hi Gautam",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "Welcome back to the workspace, we missed You!",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  height: 32.0,
                ),
                Container(
                  height: 50.0,
                  width: 390.0,
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  decoration: BoxDecoration(
                    color: MENU_BUTTON_COLOR,
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        FlutterIcon.search,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 32.0,
                ),
                RichText(
                  text: TextSpan(
                    text: "Projects",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w800,
                    ),
                    children: [
                      TextSpan(text: " "),
                      TextSpan(
                          text: "(13)",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32.0,
                ),
                Container(
                  width: 400.0,
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: projectList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 16.0,
                        mainAxisSpacing: 16.0,
                        childAspectRatio: 0.8),
                    itemBuilder: (context, index) {
                      final project = projectList[index];
                      return ProjectRow(project);
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
