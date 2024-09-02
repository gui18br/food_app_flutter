import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/color.dart';

class TabbarItem extends StatelessWidget {
  final bool isActive;
  final String icon;
  const TabbarItem({super.key, this.isActive = false, this.icon = ""});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 10),
          width: 25,
          height: 25,
          child: SvgPicture.asset(
            icon,
            color: white.withOpacity(0.4),
          ),
        ),
        const SizedBox(height: 10),
        isActive
            ? Container(
                width: 7,
                height: 7,
                decoration: BoxDecoration(
                  color: secodPrimary,
                  borderRadius: BorderRadius.circular(100),
                ),
              )
            : const SizedBox()
      ],
    );
  }
}
