import 'package:flutter/material.dart';
import 'package:project_task_manager/utils/app_color.dart';

class ProjectDetailsDesktopHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "Cyber Punk",
                style: TextStyle(
                  color: TITLE_TEXT_COLOR,
                  fontWeight: FontWeight.w800,
                  fontSize: 30.0,
                ),
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.",
                style: TextStyle(
                  color: SUB_TITLE_TEXT_COLOR,
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 110.0,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 68,
                      child: Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/user_3.png'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                          border: Border.all(
                            color: Colors.white,
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 34,
                      child: Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/user_2.png'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          border: Border.all(
                            color: Colors.white,
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/user_1.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: new BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        border: Border.all(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                iconSize: 36,
                icon: Icon(
                  Icons.add_circle_outline,
                  color: ICON_COLOR,
                ),
                onPressed: () {},
              )
            ],
          ),
        )
      ],
    );
  }
}
