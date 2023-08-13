import 'package:booking_app/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';
import '../widgets/double_text_widget.dart';
import '../widgets/icon_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.all(AppLayout.getHeight(20)),
        children: [
          Gap(
            AppLayout.getHeight(40),
          ),
          Text(
            "What are\nyou looking for",
            style: Styles.headLineStyle1.copyWith(fontSize: 35),
          ),
          Gap(
            AppLayout.getHeight(20),
          ),
          Container(
            padding: EdgeInsets.all(AppLayout.getHeight(3)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                AppLayout.getHeight(50),
              ),
              color: const Color(0xFFF4F6FD),
            ),
            child: FittedBox(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: AppLayout.getWidth(10),
                      bottom: AppLayout.getWidth(10),
                      top: AppLayout.getWidth(10),
                    ),
                    width: AppLayout.getWidth(size.width / 2.1),
                    height: AppLayout.getHeight(40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(AppLayout.getHeight(50)),
                      ),
                      color: Colors.white,
                    ),
                    child: const Center(child: Text("AirLine Tickets")),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: AppLayout.getWidth(10),
                      bottom: AppLayout.getWidth(10),
                      top: AppLayout.getWidth(10),
                    ),
                    width: AppLayout.getWidth(size.width / 2.1),
                    height: AppLayout.getHeight(40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(AppLayout.getHeight(50)),
                      ),
                      color: Colors.transparent,
                    ),
                    child: const Center(child: Text("Hotels")),
                  ),
                ],
              ),
            ),
          ),
          Gap(
            AppLayout.getHeight(25),
          ),
          const AppIconText(
            icon: Icons.flight_takeoff_rounded,
            text: 'Departure',
          ),
          Gap(
            AppLayout.getHeight(25),
          ),
          const AppIconText(
            icon: Icons.flight_land_rounded,
            text: 'Arrival',
          ),
          Gap(
            AppLayout.getHeight(25),
          ),
          ButtonTheme(
            height: AppLayout.getHeight(80),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(13),
                  ),
                ),
                padding: EdgeInsets.all(
                  AppLayout.getHeight(20),
                ),
                backgroundColor: const Color(0xD91130CE),
              ),
              child: const Text('Find Tickets'),
            ),
          ),
          Gap(
            AppLayout.getHeight(30),
          ),
          const AppDoubleTextWidget(
              bigText: 'UpComing Flights', smallText: 'view all'),
        ],
      ),
    );
  }
}
