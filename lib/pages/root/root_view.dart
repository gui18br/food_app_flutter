import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/color.dart';
import 'package:food_app/components/tabbar_item.dart';
import 'package:food_app/pages/home/home_view.dart';
import 'package:food_app/pages/root/root_controller.dart';
import 'package:get/get.dart';

class RootView extends StatelessWidget {
  RootView({super.key});
  final RootController rootController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        resizeToAvoidBottomInset: false,
        body: _buildBody(),
        bottomNavigationBar: _buildFooter(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: secodPrimary,
          child: Container(
            width: 25,
            height: 25,
            child: SvgPicture.asset(
              "assets/icons/cart.svg",
              color: primary,
            ),
          ),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
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
      backgroundGradient: gradientFullPrimary,
      onTap: (index) {
        rootController.tabIndex.value = index;
      },
      itemCount: rootController.tabs.length,
      backgroundColor: background,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.verySmoothEdge,
      tabBuilder: (int index, bool isActive) {
        return TabbarItem(
          isActive: isActive,
          icon: rootController.tabs[index],
        );
      },
      activeIndex: rootController.tabIndex.value,
    );
  }
}
