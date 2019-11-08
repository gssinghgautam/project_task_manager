import 'package:flutter/material.dart';
import 'package:project_task_manager/screens/project_details/project_details.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeMobileContent extends StatelessWidget {
  HomeMobileContent({Key key, this.sizingInfo}) : super(key: key);

  final SizingInformation sizingInfo;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
      child: ProjectDetails(sizingInfo: sizingInfo,),
    );
  }
}
