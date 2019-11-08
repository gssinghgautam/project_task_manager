import 'package:flutter/material.dart';
import 'package:project_task_manager/screens/home/widgets/project_row.dart';
import 'package:project_task_manager/utils/app_color.dart';
import 'package:project_task_manager/utils/flutter_icon.dart';
import 'package:project_task_manager/utils/helper.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
      decoration: BoxDecoration(
        color: BACKGROUND_COLOR,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16),
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Hi Gautam",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              "Welcome back to the workspace, we missed You!",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontWeight: FontWeight.w400,
                fontSize: 13.0,
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
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
                  GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: projectList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16.0,
                        mainAxisSpacing: 16.0,
                        childAspectRatio: 0.95),
                    itemBuilder: (context, index) {
                      final project = projectList[index];
                      return ProjectRow(project);
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
