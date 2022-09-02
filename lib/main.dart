import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:telegram_ui/utils/constants.dart';
import 'package:telegram_ui/widgets/custom_app_bar.dart';
import 'package:telegram_ui/widgets/custom_drawer.dart';
import 'package:telegram_ui/widgets/main_body.dart';
import 'package:telegram_ui/widgets/profile_pic_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Telegram',
      debugShowCheckedModeBanner: false,
      themeMode:
          ThemeMode.system, // adjusts theme according to mobile's current theme
      theme: lightTheme,
      darkTheme: darkTheme,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        child: CustomAppBar(),
        preferredSize: Size.fromHeight(kToolbarHeight),
      ),
      drawer: CustomDrawerBody(),
      body: MainBody(),
      floatingActionButton: FloatingActionButton(
        child: FaIcon(pencil),
        onPressed: () {},
      ),
    );
  }
}
