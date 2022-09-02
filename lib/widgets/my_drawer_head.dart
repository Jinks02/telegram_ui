import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:telegram_ui/widgets/profile_pic_widgets.dart';

import '../utils/constants.dart';

class MyDrawerHead extends StatefulWidget {
  const MyDrawerHead({Key? key}) : super(key: key);

  @override
  State<MyDrawerHead> createState() => _MyDrawerHeadState();
}

class _MyDrawerHeadState extends State<MyDrawerHead> {
  @override
  Widget build(BuildContext context) {
    bool themeFlag = false;

    return DrawerHeader(
        decoration:
            BoxDecoration(color: Theme.of(context).appBarTheme.backgroundColor),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const PeopleAndUserDP(
                      assetImageUrl: 'images/img_7.png',
                      inputHeight: 65,
                      inputWidth: 65),
                  IconButton(
                    icon: FaIcon(
                      themeFlag == false ? sun : moon,
                      color: white,
                      size: 25,
                    ),
                    onPressed: () {
                      // themeFlag ? themeFlag = false : themeFlag = true;
                      themeFlag = !themeFlag;
                      Get.changeThemeMode(
                          themeFlag ? ThemeMode.dark : ThemeMode.light);
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 19,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'John Doe',
                        style: TextStyle(color: white, fontSize: 13),
                      ),
                      Text(
                        '+91 9877349213',
                        style: TextStyle(color: white, fontSize: 11),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Icon(
                      Icons.arrow_drop_down,
                      color: white,
                      size: 30,
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
