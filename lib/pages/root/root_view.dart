import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_app/pages/home/home_view.dart';
import 'package:food_app/pages/root/root_controller.dart';
import 'package:get/get.dart';

class RootView extends StatelessWidget {
  RootView({super.key});
  final RootController rootController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _buildBody(),
      bottomNavigationBar: _buildFooter(),
    );
  }

  Widget _buildBody() {
    return IndexedStack(
      index: rootController.tabIndex.value,
      children: [
        HomeView(),
        Container(),
      ],
    );
  }

  Widget _buildFooter() {
    return AnimatedBottomNavigationBar.builder(
      itemCount: itemCount,
      tabBuilder: tabBuilder,
      activeIndex: rootController.tabIndex.value,
      onTap: onTap,
    );
  }
}
