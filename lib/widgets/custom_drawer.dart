import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:telegram_ui/utils/constants.dart';
import 'package:telegram_ui/widgets/my_drawer_head.dart';

class CustomDrawerBody extends StatelessWidget {
  const CustomDrawerBody({Key? key}) : super(key: key);

  ListTile drawerBodyListTile(
      BuildContext context, IconData drawerBodyIcon, String drawerBodyTitle) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 10),
      leading: FaIcon(drawerBodyIcon),
      title: Text(
        drawerBodyTitle,
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: ListView(
          children: [
            MyDrawerHead(),
            drawerBodyListTile(context, group, 'New Group'),
            drawerBodyListTile(context, person, 'Contacts'),
            drawerBodyListTile(context, call, 'Calls'),
            drawerBodyListTile(context, nearby, 'People Nearby'),
            drawerBodyListTile(context, saved, 'Saved Messages'),
            drawerBodyListTile(context, settings, 'Settings'),
            Divider(
              thickness: 1,
              color: black,
            ),
            drawerBodyListTile(context, addPeople, 'Invite Friends'),
            drawerBodyListTile(context, question, 'Telegram Features'),
          ],
        ),
      ),
    );
  }
}
