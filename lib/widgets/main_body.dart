import 'package:flutter/material.dart';
import 'package:telegram_ui/widgets/profile_pic_widgets.dart';

class MainBody extends StatelessWidget {
  const MainBody({Key? key}) : super(key: key);

  ListTile chatListTile(BuildContext context, String inputAssetUrl,
      String chatTitle, String chatTime, String chatSubTitle) {
    return ListTile(
      leading: PeopleAndUserDP(
          assetImageUrl: inputAssetUrl, inputHeight: 60, inputWidth: 60),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            chatTitle,
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            chatTime,
            style: Theme.of(context).textTheme.headline3,
          )
        ],
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: Text(
          chatSubTitle,
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        chatListTile(context, 'images/img.png', 'James', '9:51PM', 'Whats Up?'),
        chatListTile(context, 'images/img_1.png', 'Alex', '9:51PM', 'Hey!'),
        chatListTile(context, 'images/img_2.png', 'Sierra', '9:51PM', 'Hello'),
        chatListTile(context, 'images/img_3.png', 'Sam', '9:51PM', 'Nope'),
        chatListTile(context, 'images/img_4.png', 'Anna', '9:51PM', 'Idk'),
        chatListTile(
            context, 'images/img_5.png', 'Kelly', '9:51PM', 'What about you?'),
        chatListTile(context, 'images/img_6.png', 'Rob', '9:51PM', 'Ofc'),
        chatListTile(context, 'images/img_8.png', 'Pat', '9:51PM', 'Yep'),
        chatListTile(context, 'images/img_9.png', 'Jessica', '9:51PM',
            'As soon as I finish this'),
        chatListTile(
            context, 'images/img_11.png', 'Flash', '9:51PM', 'Lets see'),
        chatListTile(
            context, 'images/img_11.png', 'Sam', '9:51PM', 'Whats Up?'),
        chatListTile(
            context, 'images/img_11.png', 'Sam', '9:51PM', 'Whats Up?'),
        chatListTile(
            context, 'images/img_11.png', 'Sam', '9:51PM', 'Whats Up?'),
      ],
    );
  }
}
