import 'package:flutter/material.dart';
import 'package:news/constants.dart';
import 'package:news/controllers/MenuController.dart';
import 'package:news/screens/home/home_screen.dart';
import 'package:news/screens/main/components/header.dart';
import 'package:news/screens/main/components/side_menu.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MenuController _controller = Get.put(MenuController());
    return Scaffold(
      key: _controller.scaffoldkey,
      drawer: SideMenu(),
      body: SingleChildScrollView(
              child: Column(
          children: [
            Header(),
            Container(padding: EdgeInsets.all(kDefaultPadding),
            constraints: BoxConstraints(maxWidth: kMaxWidth),
            child: HomeScreen(),
            )
          ],
        ),
      ),
    );
  }
}

