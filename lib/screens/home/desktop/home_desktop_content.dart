import 'package:flutter/material.dart';
import 'package:project_task_manager/screens/home/widgets/project_explorer.dart';
import 'package:project_task_manager/screens/project_details/project_details.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeDesktopContent extends StatelessWidget {
  HomeDesktopContent({Key key, this.sizingInfo}) : super(key: key);

  final SizingInformation sizingInfo;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: ProjectExplorer(),
        ),
        Expanded(
          flex: 3,
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            child: ProjectDetails(
              sizingInfo: sizingInfo,
            ),
          ),
        )
      ],
    );
  }
}
