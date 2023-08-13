import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppLayout.getWidth(15)),
      height: AppLayout.getHeight(55),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          AppLayout.getHeight(13),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Icon(
              icon,
              color: const Color(0xFFBFC2DF),
            ),
          ),
          Gap(
            AppLayout.getWidth(10),
          ),
          Center(
            child: Text(
              text,
              style: Styles.textStyle,
            ),
          ),
        ],
      ),
    );
  }
}
